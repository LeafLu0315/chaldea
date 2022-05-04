import 'package:flutter/material.dart';

import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/models.dart';
import 'package:chaldea/packages/platform/platform.dart';
import 'package:chaldea/packages/split_route/split_route.dart';
import 'package:chaldea/utils/constants.dart';

class CarouselSettingPage extends StatefulWidget {
  const CarouselSettingPage({Key? key}) : super(key: key);

  @override
  _CarouselSettingPageState createState() => _CarouselSettingPageState();
}

class _CarouselSettingPageState extends State<CarouselSettingPage> {
  CarouselSetting get carousel => db.settings.carousel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.current.carousel_setting)),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
            value: carousel.enabled,
            title: Text(S.current.show_carousel),
            onChanged: (v) {
              setState(() {
                carousel.enabled = v;
                carousel.needUpdate = true;
                db.notifySettings();
              });
            },
          ),
          kIndentDivider,
          CheckboxListTile(
            value: carousel.enableMooncell,
            title: const Text('Mooncell News'),
            subtitle: const Text('CN/JP'),
            onChanged: carousel.enabled
                ? (v) => setState(() {
                      carousel.needUpdate = true;
                      carousel.enableMooncell = v ?? carousel.enableMooncell;
                      updateHome();
                    })
                : null,
          ),
          CheckboxListTile(
            value: carousel.enableJp,
            title: const Text('JP News'),
            subtitle: const Text('https://view.fate-go.jp/'),
            onChanged: carousel.enabled
                ? (v) => setState(() {
                      carousel.needUpdate = true;
                      carousel.enableJp = v ?? carousel.enableJp;
                      updateHome();
                    })
                : null,
          ),
          CheckboxListTile(
            value: carousel.enableUs,
            title: const Text('NA News'),
            subtitle: const Text('https://webview.fate-go.us/'),
            onChanged: carousel.enabled && !PlatformU.isWindows
                ? (v) => setState(() {
                      carousel.needUpdate = true;
                      carousel.enableUs = v ?? carousel.enableUs;
                      updateHome();
                    })
                : null,
          ),
        ],
      ),
    );
  }

  void updateHome() {
    if (SplitRoute.isSplit(context)) {
      db.notifySettings();
    }
  }
}
