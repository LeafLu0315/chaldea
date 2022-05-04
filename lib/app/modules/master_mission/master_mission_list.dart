import 'package:flutter/material.dart';

import 'package:chaldea/app/api/atlas.dart';
import 'package:chaldea/app/app.dart';
import 'package:chaldea/app/modules/common/builders.dart';
import 'package:chaldea/app/modules/common/filter_group.dart';
import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/models.dart';
import 'package:chaldea/utils/utils.dart';
import 'master_mission.dart';
import 'solver/custom_mission.dart';

class MasterMissionListPage extends StatefulWidget {
  MasterMissionListPage({Key? key}) : super(key: key);

  @override
  _MasterMissionListPageState createState() => _MasterMissionListPageState();
}

class _MasterMissionListPageState extends State<MasterMissionListPage> {
  final Map<Region, List<MasterMission>> _allRegionMissions = {};
  late Region _region;
  String? errorMsg;
  bool showOutdated = false;
  final typeOptions = FilterGroupData<MissionType?>();

  final _allMissionTypes = const <MissionType?>[
    MissionType.weekly,
    MissionType.limited,
    null,
  ];

  Future<void> _resolveMissions(Region region, {bool force = false}) async {
    errorMsg = null;
    final missions = await AtlasApi.masterMissions(
        region: region, expireAfter: force ? Duration.zero : null);
    if (missions == null || missions.isEmpty) {
      errorMsg = 'Nothing found';
    } else {
      _allRegionMissions[region] = missions;
    }
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _region = db.curUser.region;
    _resolveMissions(_region);
  }

  @override
  Widget build(BuildContext context) {
    final missions = List.of(_allRegionMissions[_region] ?? <MasterMission>[]);
    if (!showOutdated) {
      final now = DateTime.now().timestamp;
      missions.removeWhere((e) => e.endedAt < now);
    }
    missions.removeWhere((mission) => !typeOptions.matchAny(mission.missions
        .map((e) => _allMissionTypes.contains(e.type) ? e.type : null)));
    missions.sort((a, b) {
      if (a.startedAt == b.startedAt) return a.id.compareTo(b.id);
      return a.startedAt.compareTo(b.startedAt);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.master_mission),
        actions: [
          DropdownButton<Region>(
            value: _region,
            items: [
              for (final region in Region.values)
                DropdownMenuItem(
                  value: region,
                  child: Text(region.localName),
                ),
            ],
            icon: Icon(
              Icons.arrow_drop_down,
              color: SharedBuilder.appBarForeground(context),
            ),
            selectedItemBuilder: (context) => [
              for (final region in Region.values)
                DropdownMenuItem(
                  child: Text(
                    region.localName,
                    style: TextStyle(
                        color: SharedBuilder.appBarForeground(context)),
                  ),
                )
            ],
            onChanged: (v) {
              setState(() {
                if (v != null) {
                  _region = v;
                  _resolveMissions(v);
                }
              });
            },
            underline: const SizedBox(),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
              showOutdated = !showOutdated;
            },
            tooltip: S.current.outdated,
            icon: Icon(
                showOutdated ? Icons.timer_off_outlined : Icons.timer_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: errorMsg != null
                ? Center(child: Text(errorMsg!))
                : missions.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : RefreshIndicator(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return _oneMasterMission(missions[index]);
                          },
                          itemCount: missions.length,
                        ),
                        onRefresh: () => _resolveMissions(_region, force: true),
                      ),
          ),
          SafeArea(child: buttonBar)
        ],
      ),
    );
  }

  Widget get buttonBar {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        FilterGroup<MissionType?>(
          options: _allMissionTypes,
          values: typeOptions,
          combined: true,
          optionBuilder: (v) {
            if (v == null) return Text(S.current.general_others);
            return Text(Transl.enums(v, (enums) => enums.missionType).l);
          },
          onFilterChanged: (v) {
            setState(() {});
          },
        ),
        ElevatedButton(
          onPressed: () {
            router.push(child: CustomMissionPage());
          },
          child: Text(S.current.custom_mission),
        )
      ],
    );
  }

  Widget _oneMasterMission(MasterMission masterMission) {
    Map<MissionType, int> categorized = {};
    for (final mission in masterMission.missions) {
      categorized.addNum(mission.type, 1);
    }
    String subtitle = 'ID ${masterMission.id}: ';
    categorized.forEach((key, value) {
      subtitle +=
          ' $value ${Transl.enums(key, (enums) => enums.missionType).l}';
    });
    final now = DateTime.now().timestamp;
    return ListTile(
      key: Key('master_mission_${masterMission.id}'),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Text(_showTime(masterMission.startedAt))),
          const Text(' ~ '),
          Flexible(child: Text(_showTime(masterMission.endedAt))),
        ],
      ),
      subtitle: Text(subtitle),
      selected: masterMission.startedAt <= now && masterMission.endedAt > now,
      onTap: () {
        router.push(
          child: MasterMissionPage(masterMission: masterMission),
          detail: true,
        );
      },
    );
  }

  String _showTime(int t) {
    return DateTime.fromMillisecondsSinceEpoch(t * 1000).toStringShort();
  }
}
