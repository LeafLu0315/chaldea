import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:chaldea/app/app.dart';
import 'package:chaldea/models/models.dart';
import 'package:chaldea/utils/utils.dart';

class LimitEventTab extends StatelessWidget {
  final bool reversed;
  final bool showOutdated;
  final bool showSpecialRewards;
  final ScrollController scrollController;

  LimitEventTab({
    Key? key,
    this.reversed = false,
    this.showOutdated = false,
    this.showSpecialRewards = false,
    required this.scrollController,
  }) : super(key: key);

  Map<int, Event> get limitEvents => db.gameData.events;

  @override
  Widget build(BuildContext context) {
    List<Event> events = limitEvents.values.toList();
    events.removeWhere((event) => event.isEmpty);
    if (!showOutdated) {
      events.removeWhere(
          (e) => e.isOutdated() && !db.curUser.eventPlanOf(e.id).enabled);
    }

    events.sort2((e) => e.startedAt, reversed: reversed);
    return ListView(
      controller: scrollController,
      children: events.map((event) {
        final plan = db.curUser.eventPlanOf(event.id);
        bool outdated = event.isOutdated();
        String? subtitle;
        subtitle ??= 'JP ' + event.startedAt.sec2date().toDateString();
        Color? _outdatedColor = Theme.of(context).textTheme.caption?.color;
        Widget tile = ListTile(
          title: AutoSizeText(
            event.shownName,
            maxFontSize: 16,
            maxLines: 2,
            style: outdated ? TextStyle(color: _outdatedColor) : null,
          ),
          subtitle: AutoSizeText(
            subtitle,
            maxLines: 1,
            style: outdated
                ? TextStyle(color: _outdatedColor?.withAlpha(200))
                : null,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (event.extra.extraItems2.isNotEmpty ||
                  event.lotteries.isNotEmpty ||
                  event.treasureBoxes.isNotEmpty)
                Icon(Icons.star, color: Colors.yellow[700]),
              db.onUserData(
                (context, _) => Switch.adaptive(
                  value: plan.enabled,
                  onChanged: (v) {
                    plan.enabled = v;
                    event.updateStat();
                  },
                ),
              )
            ],
          ),
          onTap: () {
            router.push(url: Routes.eventI(event.id), detail: true);
          },
        );
        if (showSpecialRewards) {
          // tile = EventBasePage.buildSpecialRewards(context, event, tile);
        }
        return tile;
      }).toList(),
    );
  }
}
