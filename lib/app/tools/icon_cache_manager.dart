import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:path/path.dart' as pathlib;

import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/models.dart';
import 'package:chaldea/packages/network.dart';
import 'package:chaldea/packages/packages.dart';
import 'package:chaldea/utils/utils.dart';
import '../api/hosts.dart';

@protected
class IconCacheManagePage extends StatefulWidget {
  IconCacheManagePage({Key? key}) : super(key: key);

  @override
  _IconCacheManagePageState createState() => _IconCacheManagePageState();
}

class _IconCacheManagePageState extends State<IconCacheManagePage> {
  final _loader = AtlasIconLoader.instance;
  final _limiter = RateLimiter(
      maxCalls: 20, period: const Duration(seconds: 2), raiseOnLimit: false);
  List<Future<String?>> tasks = [];
  bool canceled = false;

  int success = 0;
  int failed = 0;

  @override
  void dispose() {
    super.dispose();
    canceled = true;
  }

  @override
  Widget build(BuildContext context) {
    final ratio =
        tasks.isEmpty ? '0' : (success / tasks.length * 100).toStringAsFixed(1);
    final finished = tasks.isNotEmpty && success + failed >= tasks.length;
    return AlertDialog(
      title: Text(S.current.icons),
      content: Text(
        'Limit: ${_limiter.maxCalls}/${_limiter.period.inSeconds} second\n'
        'Progress:\n$success/${tasks.length} ($ratio%)\n'
        '$failed failed',
        style: kMonoStyle,
      ),
      actions: [
        if (!finished)
          TextButton(
            onPressed: () {
              _limiter.cancelAll();
              Navigator.of(context).pop();
            },
            child: Text(S.current.cancel),
          ),
        if (!finished)
          TextButton(
            onPressed: tasks.isNotEmpty ? null : _startCaching,
            child: Text(S.current.download),
          ),
        if (finished)
          TextButton(
            onPressed: () {
              _limiter.cancelAll();
              Navigator.of(context).pop();
            },
            child: Text(S.current.confirm),
          ),
      ],
    );
  }

  void _startCaching() {
    if (network.unavailable) {
      EasyLoading.showInfo(S.current.error_no_internet);
      return;
    }
    Set<String?> urls = {
      for (final svtClass in [
        ...SvtClassX.regularAllWithB2,
        SvtClass.ALL,
        SvtClass.EXTRA,
        SvtClass.MIX
      ])
        for (final rarity in [1, 3, 5]) svtClass.icon(rarity),
      for (final item in db.gameData.items.values) item.borderedIcon,
      for (final svt in db.gameData.servants.values) svt.customIcon,
      for (final costume in db.gameData.costumes.values) costume.icon,
      for (final ce in db.gameData.craftEssences.values) ce.borderedIcon,
      for (final cc in db.gameData.commandCodes.values) cc.borderedIcon,
      for (final mc in db.gameData.mysticCodes.values) ...[
        mc.extraAssets.item.female,
        mc.extraAssets.item.male,
      ],
      for (final func in db.gameData.baseFunctions.values) ...[
        func.funcPopupIcon,
        for (final buff in func.buffs) buff.icon
      ]
    };
    _loader._failed.removeWhere((key, value) => !value.neverRetry);
    for (final url in urls) {
      if (url == null || url.isEmpty) continue;
      tasks.add(_loader.get(url, limiter: _limiter).then((res) {
        if (res != null) {
          success += 1;
        } else {
          failed += 1;
        }
        return res;
      }).catchError((e) async {
        if (e is! RateLimitCancelError) {
          failed += 1;
          print('failed $url: ${escapeDioError(e)}');
        }
        return '';
      }).whenComplete(() {
        if (mounted) setState(() {});
      }));
    }
    setState(() {});
  }
}

class AtlasIconLoader extends _CachedLoader<String, String> {
  AtlasIconLoader._();
  static final AtlasIconLoader instance = AtlasIconLoader._();
  final _rateLimiter = RateLimiter(maxCalls: 20);

  @override
  Future<String?> download(String url, {RateLimiter? limiter}) async {
    final localPath = _atlasUrlToFp(url);
    if (localPath == null) return null;
    if (await File(localPath).exists()) {
      return localPath;
    }
    if (Hosts.cn) {
      url = Atlas.proxyAssetUrl(url);
    }
    final resp = await (limiter ?? _rateLimiter).limited(() =>
        Dio().get(url, options: Options(responseType: ResponseType.bytes)));
    File(localPath).createSync(recursive: true);
    await File(localPath).writeAsBytes(List.from(resp.data));
    print('download image: $url');
    return localPath;
  }

  String? _atlasUrlToFp(String url) {
    String urlPath;
    if (url.startsWith(Hosts.kAtlasAssetHostGlobal)) {
      urlPath = url.replaceFirst(Hosts.kAtlasAssetHostGlobal, '');
    } else if (url.startsWith(Hosts.kAtlasAssetHostCN)) {
      urlPath = url.replaceFirst(Hosts.kAtlasAssetHostCN, '');
    } else {
      return null;
    }
    return pathlib.joinAll([
      db.paths.atlasIconDir,
      ...urlPath.split('/').where((e) => e.isNotEmpty)
    ]);
  }
}

class _FailedDetail {
  DateTime time;
  Duration? retryAfter;

  _FailedDetail({required this.time, this.retryAfter});

  bool get neverRetry => retryAfter == null || retryAfter!.inSeconds <= 0;
}

abstract class _CachedLoader<K, V> {
  final Map<K, Completer<V?>> _completers = {};
  final Map<K, V> _success = {};
  final Map<K, _FailedDetail> _failed = {};

  Future<V?> download(K key, {RateLimiter? limiter});

  V? getCached(K key) {
    if (_success.containsKey(key)) return _success[key];
    return null;
  }

  bool isFailed(K key) {
    final detail = _failed[key];
    if (detail != null) {
      if (detail.neverRetry) {
        return true;
      }
      return detail.time.add(detail.retryAfter!).isAfter(DateTime.now());
    }
    return false;
  }

  void clearFailed() {
    _failed.clear();
  }

  Future<V?> get(K key, {RateLimiter? limiter}) async {
    if (_success.containsKey(key)) return _success[key];
    if (_completers.containsKey(key)) return _completers[key]?.future;
    if (isFailed(key)) return null;
    Completer<V?> _cmpl = Completer();
    download(key, limiter: limiter).then<void>((value) {
      if (value != null) _success[key] = value;
      _failed.remove(key);
      _cmpl.complete(value);
    }).catchError((e, s) {
      _cmpl.complete(null);
      if (e is! DioError || e.response?.statusCode == 403) {
        _failed[key] ??= _FailedDetail(time: DateTime.now());
        return;
      }
      logger.e('Got $key failed', e, s);

      final detail = _failed[key];
      if (detail == null) {
        _failed[key] = _FailedDetail(
            time: DateTime.now(), retryAfter: const Duration(seconds: 30));
      } else if (detail.neverRetry) {
        return;
      } else {
        detail.retryAfter = Duration(seconds: detail.retryAfter!.inSeconds * 2);
      }
    });
    _completers[key] = _cmpl;
    return _cmpl.future;
  }
}

@immutable
class MyCacheImage extends ImageProvider<MyCacheImage> {
  /// Creates an object that decodes a [File] as an image.
  ///
  /// The arguments must not be null.
  const MyCacheImage(this.url, {this.scale = 1.0});

  /// The file to decode into an image.
  final String url;

  /// The scale to place in the [ImageInfo] object of the image.
  final double scale;

  @override
  Future<MyCacheImage> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture<MyCacheImage>(this);
  }

  @override
  ImageStreamCompleter load(MyCacheImage key, DecoderCallback decode) {
    return MultiFrameImageStreamCompleter(
      codec: _loadAsync(key, decode),
      scale: key.scale,
      debugLabel: key.url,
      informationCollector: () => <DiagnosticsNode>[
        ErrorDescription('Url: $url'),
      ],
    );
  }

  Future<ui.Codec> _loadAsync(MyCacheImage key, DecoderCallback decode) async {
    assert(key == this);

    final localPath = await AtlasIconLoader.instance.get(key.url);
    if (localPath == null) {
      throw StateError('${key.url} cannot be cached to local');
    }
    final bytes = await File(localPath).readAsBytes();
    if (bytes.lengthInBytes == 0) {
      // The file may become available later.
      PaintingBinding.instance.imageCache.evict(key);
      throw StateError('$localPath is empty and cannot be loaded as an image.');
    }

    return decode(bytes);
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is MyCacheImage && other.url == url && other.scale == scale;
  }

  @override
  int get hashCode => Object.hash(url, scale);

  @override
  String toString() =>
      '${objectRuntimeType(this, 'MyCacheImage')}("$url", scale: $scale)';
}
