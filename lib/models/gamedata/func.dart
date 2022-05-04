// ignore_for_file: non_constant_identifier_names

part of 'skill.dart';

@JsonSerializable()
class NiceFunction implements BaseFunction {
  @override
  int funcId;
  @override
  FuncType funcType;
  @override
  FuncTargetType funcTargetType;
  @override
  FuncApplyTarget funcTargetTeam;
  @override
  String funcPopupText;
  @override
  String? funcPopupIcon;
  @override
  List<NiceTrait> functvals;
  @override
  List<NiceTrait> funcquestTvals;
  @override
  List<FuncGroup> funcGroup;
  @override
  List<NiceTrait> traitVals;
  @override
  List<Buff> buffs;
  List<DataVals> svals;
  List<DataVals>? svals2;
  List<DataVals>? svals3;
  List<DataVals>? svals4;
  List<DataVals>? svals5;
  List<DataVals>? followerVals;

  NiceFunction({
    required this.funcId,
    this.funcType = FuncType.none,
    required this.funcTargetType,
    required this.funcTargetTeam,
    this.funcPopupText = '',
    this.funcPopupIcon,
    this.functvals = const [],
    this.funcquestTvals = const [],
    this.funcGroup = const [],
    this.traitVals = const [],
    this.buffs = const [],
    List<DataVals>? svals,
    this.svals2,
    this.svals3,
    this.svals4,
    this.svals5,
    this.followerVals,
  }) : svals = svals ?? [];

  List<List<DataVals>?> get svalsList =>
      [svals, svals2, svals3, svals4, svals5];

  Iterable<DataVals> get allDataVals sync* {
    yield* svals;
    if (svals2 != null) yield* svals2!;
    if (svals3 != null) yield* svals3!;
    if (svals4 != null) yield* svals4!;
    if (svals5 != null) yield* svals5!;
  }

  List<DataVals> get crossVals {
    if (svals.length != 5) return svals;
    return [
      for (int i = 0; i < svals.length; i++)
        svalsList.getOrNull(i)?[i] ?? svals[i]
    ];
  }

  DataVals getStaticVal() {
    List<Map<String, dynamic>> allVals =
        allDataVals.map((e) => e.toJson()).toList();
    if (allVals.isEmpty) return DataVals();

    Map<String, Set> x = {};
    for (final vals in allVals) {
      vals.forEach((key, value) {
        final l = x.putIfAbsent(key, () => {});
        if (value is List && l.any((e) => e.toString() == value.toString())) {
          //
        } else {
          l.add(value);
        }
      });
    }
    x.removeWhere((key, value) => value.length > 1);
    return DataVals.fromJson(x.map((key, value) => MapEntry(key, value.first)));
  }

  List<DataVals> getMutatingVals(DataVals? staticVals) {
    staticVals ??= getStaticVal();
    final staticKeys = staticVals.toJson().keys.toSet();
    List<DataVals> valList = [];
    for (int i = 0; i < svals.length; i++) {
      final val = (svalsList.getOrNull(i) ?? svals).getOrNull(i);
      if (val != null) {
        final valJson = val.toJson()
          ..removeWhere((key, value) => staticKeys.contains(key));
        if (valJson.isEmpty) continue;
        valList.add(DataVals.fromJson(valJson));
      }
    }
    return valList;
  }

  List<DataVals> ocVals(int lv) {
    assert(lv >= 0 && lv < svals.length, lv);
    return [
      for (final sv in [svals, svals2, svals3, svals4, svals5])
        if (sv != null) sv[lv]
    ];
  }

  factory NiceFunction.fromJson(Map<String, dynamic> json) {
    if (json['funcType'] == null) {
      final baseFunction = GameDataLoader
          .instance!.gameJson!['baseFunctions']![json['funcId'].toString()]!;
      json.addAll(Map.from(baseFunction));
    }

    return _$NiceFunctionFromJson(json);
  }

  static Iterable<NiceFunction> filterFuncs({
    required List<NiceFunction> funcs,
    bool showPlayer = true,
    bool showEnemy = false,
    bool showNone = false,
    bool includeTrigger = false,
  }) {
    funcs = funcs.where((func) {
      if (!showNone && func.funcType == FuncType.none) return false;
      if (func.funcTargetTeam == FuncApplyTarget.playerAndEnemy) {
        return true;
      }
      bool player = func.funcTargetTeam == FuncApplyTarget.player;
      if (func.funcTargetType.isEnemy) {
        player = !player;
      }
      return player ? showPlayer : showEnemy;
    }).toList();
    if (!includeTrigger) return funcs;
    for (final func in List.of(funcs)) {
      if (func.buffs.isEmpty || func.svals.isEmpty) continue;
      final trigger =
          kBuffValueTriggerTypes[func.buffs.first.type]?.call(func.svals.first);
      if (trigger == null) continue;
      final SkillOrTd? skill = func.svals.first.UseTreasureDevice == 1
          ? db.gameData.baseTds[trigger.skill]
          : db.gameData.baseSkills[trigger.skill];
      if (skill == null) continue;
      funcs.addAll(filterFuncs(
        funcs: skill.functions,
        showPlayer: func.funcTargetType.isEnemy ? showEnemy : showPlayer,
        showEnemy: func.funcTargetType.isEnemy ? showPlayer : showEnemy,
        showNone: showNone,
        includeTrigger: false, // avoid regression
      ));
    }

    return funcs;
  }
}

@JsonSerializable()
class FuncGroup {
  int eventId;
  int baseFuncId;
  String nameTotal;
  String name;
  String? icon;
  int priority;
  bool isDispValue;

  FuncGroup({
    required this.eventId,
    required this.baseFuncId,
    required this.nameTotal,
    required this.name,
    this.icon,
    required this.priority,
    required this.isDispValue,
  });

  factory FuncGroup.fromJson(Map<String, dynamic> json) =>
      _$FuncGroupFromJson(json);
}

@JsonSerializable()
class BaseFunction {
  int funcId;
  FuncType funcType;
  FuncTargetType funcTargetType;
  FuncApplyTarget funcTargetTeam;
  String funcPopupText;
  String? funcPopupIcon;
  List<NiceTrait> functvals;
  List<NiceTrait> funcquestTvals;
  List<FuncGroup> funcGroup;
  List<NiceTrait> traitVals;
  List<Buff> buffs;

  BaseFunction({
    required this.funcId,
    this.funcType = FuncType.none,
    required this.funcTargetType,
    required this.funcTargetTeam,
    this.funcPopupText = "",
    this.funcPopupIcon,
    this.functvals = const [],
    this.funcquestTvals = const [],
    this.funcGroup = const [],
    this.traitVals = const [],
    this.buffs = const [],
  });

  factory BaseFunction.fromJson(Map<String, dynamic> json) =>
      _$BaseFunctionFromJson(json);
}

@JsonSerializable()
class Buff {
  int id;
  String name;
  String detail;
  String? icon;
  BuffType type;
  int buffGroup;
  BuffScript script;
  List<NiceTrait> vals;
  List<NiceTrait> tvals;
  List<NiceTrait> ckSelfIndv;
  List<NiceTrait> ckOpIndv;
  int maxRate;

  Buff({
    required this.id,
    required this.name,
    required this.detail,
    this.icon,
    this.type = BuffType.none,
    this.buffGroup = 0,
    BuffScript? script,
    this.vals = const [],
    this.tvals = const [],
    this.ckSelfIndv = const [],
    this.ckOpIndv = const [],
    required this.maxRate,
  }) : script = script ?? BuffScript();

  factory Buff.fromJson(Map<String, dynamic> json) => _$BuffFromJson(json);
}

@JsonSerializable()
class BuffScript {
  int? checkIndvType;
  List<BuffType>? CheckOpponentBuffTypes;
  BuffRelationOverwrite? relationId;
  String? ReleaseText;
  int? DamageRelease;
  NiceTrait? INDIVIDUALITIE;
  List<NiceTrait>? UpBuffRateBuffIndiv;
  int? HP_LOWER;

  BuffScript({
    this.checkIndvType,
    this.CheckOpponentBuffTypes,
    this.relationId,
    this.ReleaseText,
    this.DamageRelease,
    this.INDIVIDUALITIE,
    this.UpBuffRateBuffIndiv,
    this.HP_LOWER,
  });

  factory BuffScript.fromJson(Map<String, dynamic> json) =>
      _$BuffScriptFromJson(json);
}

final Map<BuffType, BuffValueTriggerType Function(DataVals)>
    kBuffValueTriggerTypes = {
  BuffType.reflectionFunction: (v) => BuffValueTriggerType(
      BuffType.reflectionFunction,
      skill: v.Value,
      level: v.Value2),
  BuffType.attackFunction: (v) => BuffValueTriggerType(BuffType.attackFunction,
      skill: v.Value, level: v.Value2),
  BuffType.commandattackFunction: (v) => BuffValueTriggerType(
      BuffType.commandattackFunction,
      skill: v.Value,
      level: v.Value2,
      rate: v.UseRate),
  BuffType.commandattackBeforeFunction: (v) => BuffValueTriggerType(
      BuffType.commandattackBeforeFunction,
      skill: v.Value,
      level: v.Value2),
  BuffType.damageFunction: (v) => BuffValueTriggerType(BuffType.damageFunction,
      skill: v.Value, level: v.Value2),
  BuffType.deadFunction: (v) => BuffValueTriggerType(BuffType.deadFunction,
      skill: v.Value, level: v.Value2),
  BuffType.deadattackFunction: (v) => BuffValueTriggerType(
      BuffType.deadattackFunction,
      skill: v.Value,
      level: v.Value2),
  BuffType.delayFunction: (v) => BuffValueTriggerType(BuffType.delayFunction,
      skill: v.Value, level: v.Value2),
  BuffType.npattackPrevBuff: (v) => BuffValueTriggerType(
      BuffType.npattackPrevBuff,
      skill: v.SkillID,
      level: v.SkillLV,
      position: v.Value),
  BuffType.selfturnendFunction: (v) => BuffValueTriggerType(
      BuffType.selfturnendFunction,
      skill: v.Value,
      level: v.Value2,
      rate: v.UseRate),
  BuffType.wavestartFunction: (v) => BuffValueTriggerType(
      BuffType.wavestartFunction,
      skill: v.Value,
      level: v.Value2,
      rate: v.UseRate),
  BuffType.counterFunction: (v) => BuffValueTriggerType(
      BuffType.counterFunction,
      skill: v.CounterId,
      level: v.CounterLv),
  // ?
  BuffType.commandcodeattackFunction: (v) => BuffValueTriggerType(
      BuffType.commandcodeattackFunction,
      skill: v.Value,
      level: v.Value2),
  BuffType.commandcodeattackAfterFunction: (v) => BuffValueTriggerType(
      BuffType.commandcodeattackAfterFunction,
      skill: v.Value,
      level: v.Value2),
  BuffType.gutsFunction: (v) => BuffValueTriggerType(BuffType.gutsFunction,
      skill: v.Value, level: v.Value2),
  BuffType.attackBeforeFunction: (v) => BuffValueTriggerType(
      BuffType.attackBeforeFunction,
      skill: v.Value,
      level: v.Value2),
  BuffType.entryFunction: (v) => BuffValueTriggerType(BuffType.entryFunction,
      skill: v.Value, level: v.Value2),
};

class BuffValueTriggerType {
  final BuffType buffType;
  final int? skill;
  int? level;
  final int? rate;
  final int? position;
  BuffValueTriggerType(
    this.buffType, {
    required this.skill,
    required this.level,
    this.rate,
    this.position,
  });
}

enum BuffType {
  none,
  upCommandatk,
  upStarweight,
  upCriticalpoint,
  downCriticalpoint,
  regainNp,
  regainStar,
  regainHp,
  reduceHp,
  upAtk,
  downAtk,
  upDamage,
  downDamage,
  addDamage,
  subDamage,
  upNpdamage,
  downNpdamage,
  upDropnp,
  upCriticaldamage,
  downCriticaldamage,
  upSelfdamage,
  downSelfdamage,
  addSelfdamage,
  subSelfdamage,
  avoidance,
  breakAvoidance,
  invincible,
  upGrantstate,
  downGrantstate,
  upTolerance,
  downTolerance,
  avoidState,
  donotAct,
  donotSkill,
  donotNoble,
  donotRecovery,
  disableGender,
  guts,
  upHate,
  addIndividuality,
  subIndividuality,
  upDefence,
  downDefence,
  upCommandstar,
  upCommandnp,
  upCommandall,
  downCommandall,
  downStarweight,
  reduceNp,
  downDropnp,
  upGainHp,
  downGainHp,
  downCommandatk,
  downCommanstar,
  downCommandnp,
  upCriticalrate,
  downCriticalrate,
  pierceInvincible,
  avoidInstantdeath,
  upResistInstantdeath,
  upNonresistInstantdeath,
  delayFunction,
  regainNpUsedNoble,
  deadFunction,
  upMaxhp,
  downMaxhp,
  addMaxhp,
  subMaxhp,
  battlestartFunction,
  wavestartFunction,
  selfturnendFunction,
  damageFunction,
  upGivegainHp,
  downGivegainHp,
  commandattackFunction,
  deadattackFunction,
  upSpecialdefence,
  downSpecialdefence,
  upDamagedropnp,
  downDamagedropnp,
  entryFunction,
  upChagetd,
  reflectionFunction,
  upGrantSubstate,
  downGrantSubstate,
  upToleranceSubstate,
  downToleranceSubstate,
  upGrantInstantdeath,
  downGrantInstantdeath,
  gutsRatio,
  upDefencecommandall,
  downDefencecommandall,
  overwriteBattleclass,
  overwriteClassrelatioAtk,
  overwriteClassrelatioDef,
  upDamageIndividuality,
  downDamageIndividuality,
  upDamageIndividualityActiveonly,
  downDamageIndividualityActiveonly,
  upNpturnval,
  downNpturnval,
  multiattack,
  upGiveNp,
  downGiveNp,
  upResistanceDelayNpturn,
  downResistanceDelayNpturn,
  pierceDefence,
  upGutsHp,
  downGutsHp,
  upFuncgainNp,
  downFuncgainNp,
  upFuncHpReduce,
  downFuncHpReduce,
  upDefencecommanDamage,
  downDefencecommanDamage,
  npattackPrevBuff,
  fixCommandcard,
  donotGainnp,
  fieldIndividuality,
  donotActCommandtype,
  upDamageEventPoint,
  upDamageSpecial,
  attackFunction,
  commandcodeattackFunction,
  donotNobleCondMismatch,
  donotSelectCommandcard,
  donotReplace,
  shortenUserEquipSkill,
  tdTypeChange,
  overwriteClassRelation,
  tdTypeChangeArts,
  tdTypeChangeBuster,
  tdTypeChangeQuick,
  commandattackBeforeFunction,
  gutsFunction,
  upCriticalRateDamageTaken,
  downCriticalRateDamageTaken,
  upCriticalStarDamageTaken,
  downCriticalStarDamageTaken,
  skillRankUp,
  avoidanceIndividuality,
  changeCommandCardType,
  specialInvincible,
  preventDeathByDamage,
  commandcodeattackAfterFunction,
  attackBeforeFunction,
  donotSkillSelect,
  buffRate,
  invisibleBattleChara,
  counterFunction,
}

enum FuncType {
  none,
  addState,
  subState,
  damage,
  damageNp,
  gainStar,
  gainHp,
  gainNp,
  lossNp,
  shortenSkill,
  extendSkill,
  releaseState,
  lossHp,
  instantDeath,
  damageNpPierce,
  damageNpIndividual,
  addStateShort,
  gainHpPer,
  damageNpStateIndividual,
  hastenNpturn,
  delayNpturn,
  damageNpHpratioHigh,
  damageNpHpratioLow,
  cardReset,
  replaceMember,
  lossHpSafe,
  damageNpCounter,
  damageNpStateIndividualFix,
  damageNpSafe,
  callServant,
  ptShuffle,
  lossStar,
  changeServant,
  changeBg,
  damageValue,
  withdraw,
  fixCommandcard,
  shortenBuffturn,
  extendBuffturn,
  shortenBuffcount,
  extendBuffcount,
  changeBgm,
  displayBuffstring,
  resurrection,
  gainNpBuffIndividualSum,
  setSystemAliveFlag,
  forceInstantDeath,
  damageNpRare,
  gainNpFromTargets,
  gainHpFromTargets,
  lossHpPer,
  lossHpPerSafe,
  shortenUserEquipSkill,
  quickChangeBg,
  shiftServant,
  damageNpAndCheckIndividuality,
  absorbNpturn,
  overwriteDeadType,
  forceAllBuffNoact,
  breakGaugeUp,
  breakGaugeDown,
  moveToLastSubmember,
  expUp,
  qpUp,
  dropUp,
  friendPointUp,
  eventDropUp,
  eventDropRateUp,
  eventPointUp,
  eventPointRateUp,
  transformServant,
  qpDropUp,
  servantFriendshipUp,
  userEquipExpUp,
  classDropUp,
  enemyEncountCopyRateUp,
  enemyEncountRateUp,
  enemyProbDown,
  getRewardGift,
  sendSupportFriendPoint,
  movePosition,
  revival,
  damageNpIndividualSum,
  damageValueSafe,
  friendPointUpDuplicate,
  moveState,
  changeBgmCostume,
  func126,
  func127,
  updateEntryPositions,
  buddyPointUp,
}

extension FuncTargetTypeX on FuncTargetType {
  bool get isEnemy => name.toLowerCase().contains('enemy');
}

enum FuncTargetType {
  self,
  ptOne,
  ptAnother,
  ptAll,
  enemy,
  enemyAnother,
  enemyAll,
  ptFull,
  enemyFull,
  ptOther,
  ptOneOther,
  ptRandom,
  enemyOther,
  enemyRandom,
  ptOtherFull,
  enemyOtherFull,
  ptselectOneSub,
  ptselectSub,
  ptOneAnotherRandom,
  ptSelfAnotherRandom,
  enemyOneAnotherRandom,
  ptSelfAnotherFirst,
  ptSelfBefore,
  ptSelfAfter,
  ptSelfAnotherLast,
  commandTypeSelfTreasureDevice,
  fieldOther,
  enemyOneNoTargetNoAction,
  ptOneHpLowestValue,
  ptOneHpLowestRate,
}

enum FuncApplyTarget {
  player,
  enemy,
  playerAndEnemy,
}
