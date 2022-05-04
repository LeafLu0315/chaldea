import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:chaldea/app/api/chaldea.dart';
import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/api/recognizer.dart';
import 'package:chaldea/models/models.dart';
import 'package:chaldea/packages/app_info.dart';
import 'package:chaldea/packages/packages.dart';
import 'package:chaldea/utils/img_util.dart';
import 'package:chaldea/utils/utils.dart';
import 'package:chaldea/widgets/widgets.dart';
import 'screenshot/item_result.dart';
import 'screenshot/screenshots.dart';
import 'screenshot/viewer.dart';

class ImportItemScreenshotPage extends StatefulWidget {
  ImportItemScreenshotPage({Key? key}) : super(key: key);

  @override
  ImportItemScreenshotPageState createState() =>
      ImportItemScreenshotPageState();
}

class ImportItemScreenshotPageState extends State<ImportItemScreenshotPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late Dio _dio;

  Set<Uint8List> get imageFiles => db.runtimeData.recognizerItems;
  ItemResult? get result => db.runtimeData.recognizerItemResult;
  set result(ItemResult? v) => db.runtimeData.recognizerItemResult = v;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: AppInfo.isDebugDevice ? 3 : 2, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) setState(() {});
    });

    _dio = Dio(ChaldeaApi.dio.options.copyWith(
      sendTimeout: 600 * 1000,
      receiveTimeout: 600 * 1000,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(S.current.item_screenshot),
        actions: [
          MarkdownHelpPage.buildHelpBtn(context, 'import_item_screenshot.md'),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: S.current.screenshots),
            Tab(text: S.current.results),
            if (AppInfo.isDebugDevice) const Tab(text: 'Debug')
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          KeepAliveBuilder(
            builder: (ctx) => ScreenshotsTab(
              images: imageFiles,
              onUpload: _uploadScreenshots,
              debugServerRoot: _dio.options.baseUrl,
            ),
          ),
          KeepAliveBuilder(builder: (ctx) => ItemResultTab(result: result)),
          if (AppInfo.isDebugDevice)
            KeepAliveBuilder(
              builder: (ctx) => RecognizerViewerTab(type: RecognizerType.item),
            )
        ],
      ),
    );
  }

  void _uploadScreenshots() async {
    if (imageFiles.isEmpty) {
      return;
    }
    try {
      EasyLoading.show(
          status: 'Uploading', maskType: EasyLoadingMaskType.clear);

      final Map<String, dynamic> map = {};
      List<MultipartFile> files = [];
      for (int index = 0; index < imageFiles.length; index++) {
        var bytes = imageFiles.elementAt(index);
        // compress if size > 1.0M
        if (bytes.length / 1024 > 1.0) {
          bytes = await compressToJpgAsync(
              src: bytes, maxWidth: 1920, maxHeight: 1080, quality: 90);
        }
        files.add(MultipartFile.fromBytes(bytes, filename: 'file$index'));
      }
      map['files'] = files;
      var formData = FormData.fromMap(map);
      final resp2 = await _dio.post('/recognizer/item', data: formData);
      result = ItemResult.fromJson(resp2.data);
      logger.i('received recognized: ${result?.details.length} items');
      if (mounted) {
        setState(() {});
        SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
          if (mounted) {
            _tabController.index = 1;
          }
        });
      }
    } catch (e, s) {
      logger.e('upload item screenshots to server error', e, s);
      SimpleCancelOkDialog(
        title: const Text('Error'),
        content: Text(e.toString()),
        hideCancel: true,
      ).showDialog(context);
    } finally {
      EasyLoading.dismiss();
    }
  }
}
