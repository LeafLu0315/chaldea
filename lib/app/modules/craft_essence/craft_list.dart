import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:chaldea/app/app.dart';
import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/models.dart';
import 'package:chaldea/packages/language.dart';
import 'package:chaldea/packages/split_route/split_route.dart';
import 'package:chaldea/utils/utils.dart';
import 'package:chaldea/widgets/widgets.dart';
import '../common/filter_page_base.dart';
import 'craft.dart';
import 'filter.dart';

class CraftListPage extends StatefulWidget {
  final void Function(CraftEssence)? onSelected;

  CraftListPage({Key? key, this.onSelected}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CraftListPageState();
}

class CraftListPageState extends State<CraftListPage>
    with SearchableListState<CraftEssence, CraftListPage> {
  @override
  Iterable<CraftEssence> get wholeData => db.gameData.craftEssences.values;

  CraftFilterData get filterData => db.settings.craftFilterData;

  @override
  final bool prototypeExtent = true;

  @override
  void initState() {
    super.initState();
    if (db.settings.autoResetFilter) {
      filterData.reset();
    }
    options = _CraftSearchOptions(onChanged: (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    filterShownList(
      compare: (a, b) => CraftFilterData.compare(a, b,
          keys: filterData.sortKeys, reversed: filterData.sortReversed),
    );
    return scrollListener(
      useGrid: filterData.useGrid,
      appBar: AppBar(
        leading: const MasterBackButton(),
        title: AutoSizeText(S.current.craft_essence, maxLines: 1),
        titleSpacing: 0,
        bottom: showSearchBar ? searchBar : null,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.filter_alt),
            tooltip: S.of(context).filter,
            onPressed: () => FilterPage.show(
              context: context,
              builder: (context) => CraftFilterPage(
                filterData: filterData,
                onChanged: (_) {
                  if (mounted) setState(() {});
                },
              ),
            ),
          ),
          searchIcon,
        ],
      ),
    );
  }

  @override
  Widget listItemBuilder(CraftEssence ce) {
    String additionalText = '';
    switch (filterData.sortKeys.first) {
      case CraftCompare.atk:
        additionalText = '  ATK ${ce.atkMax}';
        break;
      case CraftCompare.hp:
        additionalText = '  HP ${ce.hpMax}';
        break;
      default:
        break;
    }
    return CustomTile(
      leading: db.getIconImage(
        ce.borderedIcon,
        width: 56,
        aspectRatio: 132 / 144,
      ),
      title: AutoSizeText(ce.lName.l, maxLines: 1),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!Language.isJP) AutoSizeText(ce.name, maxLines: 1),
          Text('No.${ce.collectionNo}$additionalText'),
        ],
      ),
      trailing: IconButton(
        icon: Icon(DirectionalIcons.keyboard_arrow_forward(context)),
        constraints: const BoxConstraints(minHeight: 48, minWidth: 2),
        padding: const EdgeInsets.symmetric(vertical: 8),
        onPressed: () => _onTapCard(ce, true),
      ),
      selected: SplitRoute.isSplit(context) && selected == ce,
      onTap: () => _onTapCard(ce),
    );
  }

  @override
  Widget gridItemBuilder(CraftEssence ce) {
    return GestureDetector(
      child: db.getIconImage(ce.borderedIcon),
      onTap: () => _onTapCard(ce),
    );
  }

  @override
  bool filter(CraftEssence ce) {
    if (!filterData.rarity.matchOne(ce.rarity)) {
      return false;
    }
    if (!filterData.obtain.matchOne(ce.obtain)) {
      return false;
    }
    if (!filterData.atkType.matchOne(ce.atkType)) {
      return false;
    }
    if (!filterData.status
        .matchOne(db.curUser.craftEssences[ce.collectionNo] ?? 0)) {
      return false;
    }

    if (filterData.effectType.options.isNotEmpty) {
      List<NiceFunction> funcs = [
        for (final skill in ce.skills)
          ...skill.filteredFunction(includeTrigger: true),
      ];
      if (filterData.effectTarget.options.isNotEmpty) {
        funcs.retainWhere((func) {
          return filterData.effectTarget
              .matchOne(EffectTargetX.fromFunc(func.funcTargetType));
        });
      }
      if (funcs.isEmpty) return false;
      if (filterData.effectType.matchAll) {
        if (!filterData.effectType.options
            .every((effect) => funcs.any((func) => effect.match(func)))) {
          return false;
        }
      } else {
        if (!filterData.effectType.options
            .any((effect) => funcs.any((func) => effect.match(func)))) {
          return false;
        }
      }
    }
    return true;
  }

  void _onTapCard(CraftEssence ce, [bool forcePush = false]) {
    if (widget.onSelected != null && !forcePush) {
      widget.onSelected!(ce);
    } else {
      router.push(
        url: ce.route,
        child: CraftDetailPage(
          ce: ce,
          onSwitch: (cur, reversed) => switchNext(cur, reversed, shownList),
        ),
        detail: true,
        popDetail: true,
      );
      selected = ce;
    }
    setState(() {});
  }
}

class _CraftSearchOptions with SearchOptionsMixin<CraftEssence> {
  bool basic = true;
  bool skill = true;
  @override
  ValueChanged? onChanged;

  _CraftSearchOptions({this.onChanged});

  @override
  Widget builder(BuildContext context, StateSetter setState) {
    return Wrap(
      children: [
        CheckboxWithLabel(
          value: basic,
          label: Text(S.current.search_option_basic),
          onChanged: (v) {
            basic = v ?? basic;
            setState(() {});
            updateParent();
          },
        ),
        CheckboxWithLabel(
          value: skill,
          label: Text(S.current.skill),
          onChanged: (v) {
            skill = v ?? skill;
            setState(() {});
            updateParent();
          },
        ),
      ],
    );
  }

  @override
  Iterable<String?> getSummary(CraftEssence ce) sync* {
    if (basic) {
      yield ce.collectionNo.toString();
      yield ce.id.toString();
      yield* getAllKeys(ce.lName);
      yield SearchUtil.getJP(ce.ruby);
      yield* getAllKeys(Transl.cvNames(ce.profile.cv));
      yield* getAllKeys(Transl.illustratorNames(ce.profile.illustrator));
    }
    if (skill) {
      for (final skill in ce.skills) {
        yield* getAllKeys(skill.lName);
        yield SearchUtil.getJP(skill.ruby);
        yield* getAllKeys(Transl.skillDetail(skill.unmodifiedDetail ?? ''));
        for (final skillAdd in skill.skillAdd) {
          yield* getAllKeys(Transl.skillNames(skillAdd.name));
        }
      }
    }
  }
}
