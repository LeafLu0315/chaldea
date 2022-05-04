import 'dart:math';

import 'package:flutter/material.dart';

import 'package:chaldea/app/app.dart';
import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/models.dart';

class SvtTabsSortingSetting extends StatefulWidget {
  SvtTabsSortingSetting({Key? key}) : super(key: key);

  @override
  _SvtTabsSortingSettingState createState() => _SvtTabsSortingSettingState();
}

class _SvtTabsSortingSettingState extends State<SvtTabsSortingSetting> {
  List<SvtTab> get tabs => db.settings.display.sortedSvtTabs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.current.setting_tabs_sorting)),
      body: ListView(
        children: [
          reorderableList(),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    db.settings.display.sortedSvtTabs = List.of(SvtTab.values);
                    db.saveSettings();
                  });
                },
                child: Text(S.current.reset),
              ),
              ElevatedButton(
                onPressed: db.gameData.servants.isEmpty
                    ? null
                    : () {
                        final index =
                            Random().nextInt(db.gameData.servants.length);
                        router.push(url: Routes.servantI(index));
                      },
                child: Text(S.current.preview),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget reorderableList() {
    return ReorderableListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        for (final tab in tabs)
          DecoratedBox(
            key: Key('$tab'),
            decoration: BoxDecoration(
                border: Border(bottom: Divider.createBorderSide(context))),
            child: ListTile(
              leading: Text((tabs.indexOf(tab) + 1).toString()),
              horizontalTitleGap: 0,
              title: Text(tabName(tab)),
            ),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final item = tabs.removeAt(oldIndex);
          tabs.insert(newIndex, item);
        });
      },
    );
  }

  String tabName(SvtTab tab) {
    switch (tab) {
      case SvtTab.plan:
        return S.current.plan;
      case SvtTab.skill:
        return S.current.skill;
      case SvtTab.np:
        return S.current.noble_phantasm;
      case SvtTab.info:
        return S.current.svt_basic_info;
      case SvtTab.lore:
        return S.current.svt_profile;
      case SvtTab.illustration:
        return S.current.illustration;
      case SvtTab.relatedCards:
        return S.current.svt_related_ce;
      case SvtTab.summon:
        return S.current.summon;
      case SvtTab.voice:
        return S.current.voice;
      case SvtTab.quest:
        return S.current.quest;
    }
  }
}
