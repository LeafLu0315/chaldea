import '../../models/db.dart';

class Hosts {
  const Hosts._();
  static bool get cn => db.settings.proxyServer;

  static const kApiHostGlobal = 'https://api.chaldea.center/v2';
  static const kApiHostCN = 'https://api-cn.chaldea.center/v2';
  static String get apiHost => cn ? kApiHostCN : kApiHostGlobal;

  static const kWorkerHostGlobal = 'https://worker.chaldea.center';
  static const kWokerHostCN = 'https://worker-cn.chaldea.center';
  static String get workerHost => cn ? kWokerHostCN : kWorkerHostGlobal;

  static const kDataHostGlobal = 'https://data.chaldea.center';
  static const kDataHostCN = 'https://data-cn.chaldea.center';
  static String get dataHost => cn ? kDataHostCN : kDataHostGlobal;

  static const kAtlasApiHostGlobal = 'https://api.atlasacademy.io';
  static const kAtlasApiHostCN = 'https://api.atlas.chaldea.center';
  static String get atlasApiHost => cn ? kAtlasApiHostCN : kAtlasApiHostGlobal;

  static const kAtlasAssetHostGlobal = 'https://static.atlasacademy.io';
  static const kAtlasAssetHostCN = 'https://static.atlas.chaldea.center';
  static String get atlasAssetHost =>
      cn ? kAtlasAssetHostCN : kAtlasAssetHostGlobal;
}
