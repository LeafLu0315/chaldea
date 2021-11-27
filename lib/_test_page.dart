// ignore_for_file: unused_element,unused_import
import 'package:chaldea/components/components.dart';
import 'package:chaldea/modules/servant/servant_detail_page.dart';
import 'package:path/path.dart' as p;

void testFunction([BuildContext? context]) async {
  // if (PlatformU.isMacOS) _reloadDebugDataset();
  return;
}

String _makeLocalizedDart(String chs, String jpn, String eng) {
  return " LocalizedText(chs: '$chs', jpn: '$jpn', eng: '$eng'),";
}

Future _reloadDebugDataset() async {
  await db.extractZip(
    fp: r'res/data/dataset.zip',
    savePath: db.paths.gameDir,
  );
  await db.loadGameData();
  EasyLoading.showSuccess('Reloaded');
}

class _AA {
  String a;
  _AA(this.a);
}

class _BB {
  String b;
  _BB(this.b);
}

class _CC implements _AA, _BB {
  @override
  String a;
  @override
  String b;

  _CC(this.a, this.b);
}
