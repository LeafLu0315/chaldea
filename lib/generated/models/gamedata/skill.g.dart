// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../models/gamedata/skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseSkill _$BaseSkillFromJson(Map json) => BaseSkill(
      id: json['id'] as int,
      name: json['name'] as String,
      ruby: json['ruby'] as String? ?? '',
      unmodifiedDetail: json['unmodifiedDetail'] as String?,
      type: $enumDecode(_$SkillTypeEnumMap, json['type']),
      icon: json['icon'] as String?,
      coolDown:
          (json['coolDown'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [],
      actIndividuality: (json['actIndividuality'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      script: json['script'] == null
          ? null
          : SkillScript.fromJson(
              Map<String, dynamic>.from(json['script'] as Map)),
      extraPassive: (json['extraPassive'] as List<dynamic>?)
              ?.map((e) =>
                  ExtraPassive.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      skillAdd: (json['skillAdd'] as List<dynamic>?)
              ?.map(
                  (e) => SkillAdd.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      aiIds: (json['aiIds'] as Map?)?.map(
        (k, e) => MapEntry($enumDecode(_$AiTypeEnumMap, k),
            (e as List<dynamic>).map((e) => e as int).toList()),
      ),
      functions: (json['functions'] as List<dynamic>)
          .map(
              (e) => NiceFunction.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

const _$SkillTypeEnumMap = {
  SkillType.active: 'active',
  SkillType.passive: 'passive',
};

const _$AiTypeEnumMap = {
  AiType.svt: 'svt',
  AiType.field: 'field',
};

NiceSkill _$NiceSkillFromJson(Map json) => NiceSkill(
      id: json['id'] as int,
      name: json['name'] as String,
      ruby: json['ruby'] as String? ?? '',
      unmodifiedDetail: json['unmodifiedDetail'] as String?,
      type: $enumDecode(_$SkillTypeEnumMap, json['type']),
      icon: json['icon'] as String?,
      coolDown:
          (json['coolDown'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [],
      actIndividuality: (json['actIndividuality'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      script: json['script'] == null
          ? null
          : SkillScript.fromJson(
              Map<String, dynamic>.from(json['script'] as Map)),
      extraPassive: (json['extraPassive'] as List<dynamic>?)
              ?.map((e) =>
                  ExtraPassive.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      skillAdd: (json['skillAdd'] as List<dynamic>?)
              ?.map(
                  (e) => SkillAdd.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      aiIds: (json['aiIds'] as Map?)?.map(
        (k, e) => MapEntry($enumDecode(_$AiTypeEnumMap, k),
            (e as List<dynamic>).map((e) => e as int).toList()),
      ),
      functions: (json['functions'] as List<dynamic>?)
              ?.map((e) =>
                  NiceFunction.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      num: json['num'] as int? ?? 0,
      strengthStatus: json['strengthStatus'] as int? ?? 0,
      priority: json['priority'] as int? ?? 0,
      condQuestId: json['condQuestId'] as int? ?? 0,
      condQuestPhase: json['condQuestPhase'] as int? ?? 0,
      condLv: json['condLv'] as int? ?? 0,
      condLimitCount: json['condLimitCount'] as int? ?? 0,
    );

BaseTd _$BaseTdFromJson(Map json) => BaseTd(
      id: json['id'] as int,
      card: $enumDecode(_$CardTypeEnumMap, json['card']),
      name: json['name'] as String,
      ruby: json['ruby'] as String? ?? "",
      icon: json['icon'] as String?,
      rank: json['rank'] as String,
      type: json['type'] as String,
      unmodifiedDetail: json['unmodifiedDetail'] as String?,
      npGain: NpGain.fromJson(Map<String, dynamic>.from(json['npGain'] as Map)),
      npDistribution: (json['npDistribution'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      individuality: (json['individuality'] as List<dynamic>)
          .map((e) => NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      script: json['script'] == null
          ? null
          : SkillScript.fromJson(
              Map<String, dynamic>.from(json['script'] as Map)),
      functions: (json['functions'] as List<dynamic>)
          .map(
              (e) => NiceFunction.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

const _$CardTypeEnumMap = {
  CardType.none: 'none',
  CardType.arts: 'arts',
  CardType.buster: 'buster',
  CardType.quick: 'quick',
  CardType.extra: 'extra',
  CardType.blank: 'blank',
  CardType.weak: 'weak',
  CardType.strength: 'strength',
};

NiceTd _$NiceTdFromJson(Map json) => NiceTd(
      id: json['id'] as int,
      num: json['num'] as int,
      card: $enumDecode(_$CardTypeEnumMap, json['card']),
      name: json['name'] as String,
      ruby: json['ruby'] as String? ?? "",
      icon: json['icon'] as String?,
      rank: json['rank'] as String,
      type: json['type'] as String,
      unmodifiedDetail: json['unmodifiedDetail'] as String?,
      npGain: NpGain.fromJson(Map<String, dynamic>.from(json['npGain'] as Map)),
      npDistribution: (json['npDistribution'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      strengthStatus: json['strengthStatus'] as int? ?? 0,
      priority: json['priority'] as int,
      condQuestId: json['condQuestId'] as int? ?? 0,
      condQuestPhase: json['condQuestPhase'] as int? ?? 0,
      individuality: (json['individuality'] as List<dynamic>)
          .map((e) => NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      script: json['script'] == null
          ? null
          : SkillScript.fromJson(
              Map<String, dynamic>.from(json['script'] as Map)),
      functions: (json['functions'] as List<dynamic>)
          .map(
              (e) => NiceFunction.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

CommonRelease _$CommonReleaseFromJson(Map json) => CommonRelease(
      id: json['id'] as int,
      priority: json['priority'] as int,
      condGroup: json['condGroup'] as int,
      condType: toEnumCondType(json['condType'] as Object),
      condId: json['condId'] as int,
      condNum: json['condNum'] as int,
    );

ExtraPassive _$ExtraPassiveFromJson(Map json) => ExtraPassive(
      num: json['num'] as int,
      priority: json['priority'] as int,
      condQuestId: json['condQuestId'] as int? ?? 0,
      condQuestPhase: json['condQuestPhase'] as int? ?? 0,
      condLv: json['condLv'] as int? ?? 0,
      condLimitCount: json['condLimitCount'] as int? ?? 0,
      condFriendshipRank: json['condFriendshipRank'] as int? ?? 0,
      eventId: json['eventId'] as int? ?? 0,
      flag: json['flag'] as int? ?? 0,
      startedAt: json['startedAt'] as int,
      endedAt: json['endedAt'] as int,
    );

SkillScript _$SkillScriptFromJson(Map json) => SkillScript(
      NP_HIGHER:
          (json['NP_HIGHER'] as List<dynamic>?)?.map((e) => e as int).toList(),
      NP_LOWER:
          (json['NP_LOWER'] as List<dynamic>?)?.map((e) => e as int).toList(),
      STAR_HIGHER: (json['STAR_HIGHER'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      STAR_LOWER:
          (json['STAR_LOWER'] as List<dynamic>?)?.map((e) => e as int).toList(),
      HP_VAL_HIGHER: (json['HP_VAL_HIGHER'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      HP_VAL_LOWER: (json['HP_VAL_LOWER'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      HP_PER_HIGHER: (json['HP_PER_HIGHER'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      HP_PER_LOWER: (json['HP_PER_LOWER'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      additionalSkillId: (json['additionalSkillId'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      additionalSkillActorType:
          (json['additionalSkillActorType'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
    );

SkillAdd _$SkillAddFromJson(Map json) => SkillAdd(
      priority: json['priority'] as int,
      releaseConditions: (json['releaseConditions'] as List<dynamic>)
          .map((e) =>
              CommonRelease.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      name: json['name'] as String,
      ruby: json['ruby'] as String,
    );

NpGain _$NpGainFromJson(Map json) => NpGain(
      buster: (json['buster'] as List<dynamic>).map((e) => e as int).toList(),
      arts: (json['arts'] as List<dynamic>).map((e) => e as int).toList(),
      quick: (json['quick'] as List<dynamic>).map((e) => e as int).toList(),
      extra: (json['extra'] as List<dynamic>).map((e) => e as int).toList(),
      defence: (json['defence'] as List<dynamic>).map((e) => e as int).toList(),
      np: (json['np'] as List<dynamic>).map((e) => e as int).toList(),
    );

BuffRelationOverwrite _$BuffRelationOverwriteFromJson(Map json) =>
    BuffRelationOverwrite(
      atkSide: (json['atkSide'] as Map).map(
        (k, e) => MapEntry(
            $enumDecode(_$SvtClassEnumMap, k),
            (e as Map).map(
              (k, e) => MapEntry($enumDecode(_$SvtClassEnumMap, k), e),
            )),
      ),
      defSide: (json['defSide'] as Map).map(
        (k, e) => MapEntry(
            $enumDecode(_$SvtClassEnumMap, k),
            (e as Map).map(
              (k, e) => MapEntry($enumDecode(_$SvtClassEnumMap, k), e),
            )),
      ),
    );

const _$SvtClassEnumMap = {
  SvtClass.saber: 'saber',
  SvtClass.archer: 'archer',
  SvtClass.lancer: 'lancer',
  SvtClass.rider: 'rider',
  SvtClass.caster: 'caster',
  SvtClass.assassin: 'assassin',
  SvtClass.berserker: 'berserker',
  SvtClass.shielder: 'shielder',
  SvtClass.ruler: 'ruler',
  SvtClass.alterEgo: 'alterEgo',
  SvtClass.avenger: 'avenger',
  SvtClass.demonGodPillar: 'demonGodPillar',
  SvtClass.moonCancer: 'moonCancer',
  SvtClass.foreigner: 'foreigner',
  SvtClass.pretender: 'pretender',
  SvtClass.grandCaster: 'grandCaster',
  SvtClass.beastII: 'beastII',
  SvtClass.ushiChaosTide: 'ushiChaosTide',
  SvtClass.beastI: 'beastI',
  SvtClass.beastIIIR: 'beastIIIR',
  SvtClass.beastIIIL: 'beastIIIL',
  SvtClass.beastIV: 'beastIV',
  SvtClass.beastUnknown: 'beastUnknown',
  SvtClass.unknown: 'unknown',
  SvtClass.agarthaPenth: 'agarthaPenth',
  SvtClass.cccFinaleEmiyaAlter: 'cccFinaleEmiyaAlter',
  SvtClass.salemAbby: 'salemAbby',
  SvtClass.ALL: 'ALL',
  SvtClass.EXTRA: 'EXTRA',
  SvtClass.MIX: 'MIX',
};

RelationOverwriteDetail _$RelationOverwriteDetailFromJson(Map json) =>
    RelationOverwriteDetail(
      damageRate: json['damageRate'] as int,
      type: $enumDecode(_$ClassRelationOverwriteTypeEnumMap, json['type']),
    );

const _$ClassRelationOverwriteTypeEnumMap = {
  ClassRelationOverwriteType.overwriteForce: 'overwriteForce',
  ClassRelationOverwriteType.overwriteMoreThanTarget: 'overwriteMoreThanTarget',
  ClassRelationOverwriteType.overwriteLessThanTarget: 'overwriteLessThanTarget',
};

NiceFunction _$NiceFunctionFromJson(Map json) => NiceFunction(
      funcId: json['funcId'] as int,
      funcType: $enumDecodeNullable(_$FuncTypeEnumMap, json['funcType']) ??
          FuncType.none,
      funcTargetType:
          $enumDecode(_$FuncTargetTypeEnumMap, json['funcTargetType']),
      funcTargetTeam:
          $enumDecode(_$FuncApplyTargetEnumMap, json['funcTargetTeam']),
      funcPopupText: json['funcPopupText'] as String? ?? '',
      funcPopupIcon: json['funcPopupIcon'] as String?,
      functvals: (json['functvals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      funcquestTvals: (json['funcquestTvals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      funcGroup: (json['funcGroup'] as List<dynamic>?)
              ?.map((e) =>
                  FuncGroup.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      traitVals: (json['traitVals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      buffs: (json['buffs'] as List<dynamic>?)
              ?.map((e) => Buff.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      svals: (json['svals'] as List<dynamic>?)
          ?.map((e) => DataVals.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      svals2: (json['svals2'] as List<dynamic>?)
          ?.map((e) => DataVals.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      svals3: (json['svals3'] as List<dynamic>?)
          ?.map((e) => DataVals.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      svals4: (json['svals4'] as List<dynamic>?)
          ?.map((e) => DataVals.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      svals5: (json['svals5'] as List<dynamic>?)
          ?.map((e) => DataVals.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      followerVals: (json['followerVals'] as List<dynamic>?)
          ?.map((e) => DataVals.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

const _$FuncTypeEnumMap = {
  FuncType.none: 'none',
  FuncType.addState: 'addState',
  FuncType.subState: 'subState',
  FuncType.damage: 'damage',
  FuncType.damageNp: 'damageNp',
  FuncType.gainStar: 'gainStar',
  FuncType.gainHp: 'gainHp',
  FuncType.gainNp: 'gainNp',
  FuncType.lossNp: 'lossNp',
  FuncType.shortenSkill: 'shortenSkill',
  FuncType.extendSkill: 'extendSkill',
  FuncType.releaseState: 'releaseState',
  FuncType.lossHp: 'lossHp',
  FuncType.instantDeath: 'instantDeath',
  FuncType.damageNpPierce: 'damageNpPierce',
  FuncType.damageNpIndividual: 'damageNpIndividual',
  FuncType.addStateShort: 'addStateShort',
  FuncType.gainHpPer: 'gainHpPer',
  FuncType.damageNpStateIndividual: 'damageNpStateIndividual',
  FuncType.hastenNpturn: 'hastenNpturn',
  FuncType.delayNpturn: 'delayNpturn',
  FuncType.damageNpHpratioHigh: 'damageNpHpratioHigh',
  FuncType.damageNpHpratioLow: 'damageNpHpratioLow',
  FuncType.cardReset: 'cardReset',
  FuncType.replaceMember: 'replaceMember',
  FuncType.lossHpSafe: 'lossHpSafe',
  FuncType.damageNpCounter: 'damageNpCounter',
  FuncType.damageNpStateIndividualFix: 'damageNpStateIndividualFix',
  FuncType.damageNpSafe: 'damageNpSafe',
  FuncType.callServant: 'callServant',
  FuncType.ptShuffle: 'ptShuffle',
  FuncType.lossStar: 'lossStar',
  FuncType.changeServant: 'changeServant',
  FuncType.changeBg: 'changeBg',
  FuncType.damageValue: 'damageValue',
  FuncType.withdraw: 'withdraw',
  FuncType.fixCommandcard: 'fixCommandcard',
  FuncType.shortenBuffturn: 'shortenBuffturn',
  FuncType.extendBuffturn: 'extendBuffturn',
  FuncType.shortenBuffcount: 'shortenBuffcount',
  FuncType.extendBuffcount: 'extendBuffcount',
  FuncType.changeBgm: 'changeBgm',
  FuncType.displayBuffstring: 'displayBuffstring',
  FuncType.resurrection: 'resurrection',
  FuncType.gainNpBuffIndividualSum: 'gainNpBuffIndividualSum',
  FuncType.setSystemAliveFlag: 'setSystemAliveFlag',
  FuncType.forceInstantDeath: 'forceInstantDeath',
  FuncType.damageNpRare: 'damageNpRare',
  FuncType.gainNpFromTargets: 'gainNpFromTargets',
  FuncType.gainHpFromTargets: 'gainHpFromTargets',
  FuncType.lossHpPer: 'lossHpPer',
  FuncType.lossHpPerSafe: 'lossHpPerSafe',
  FuncType.shortenUserEquipSkill: 'shortenUserEquipSkill',
  FuncType.quickChangeBg: 'quickChangeBg',
  FuncType.shiftServant: 'shiftServant',
  FuncType.damageNpAndCheckIndividuality: 'damageNpAndCheckIndividuality',
  FuncType.absorbNpturn: 'absorbNpturn',
  FuncType.overwriteDeadType: 'overwriteDeadType',
  FuncType.forceAllBuffNoact: 'forceAllBuffNoact',
  FuncType.breakGaugeUp: 'breakGaugeUp',
  FuncType.breakGaugeDown: 'breakGaugeDown',
  FuncType.moveToLastSubmember: 'moveToLastSubmember',
  FuncType.expUp: 'expUp',
  FuncType.qpUp: 'qpUp',
  FuncType.dropUp: 'dropUp',
  FuncType.friendPointUp: 'friendPointUp',
  FuncType.eventDropUp: 'eventDropUp',
  FuncType.eventDropRateUp: 'eventDropRateUp',
  FuncType.eventPointUp: 'eventPointUp',
  FuncType.eventPointRateUp: 'eventPointRateUp',
  FuncType.transformServant: 'transformServant',
  FuncType.qpDropUp: 'qpDropUp',
  FuncType.servantFriendshipUp: 'servantFriendshipUp',
  FuncType.userEquipExpUp: 'userEquipExpUp',
  FuncType.classDropUp: 'classDropUp',
  FuncType.enemyEncountCopyRateUp: 'enemyEncountCopyRateUp',
  FuncType.enemyEncountRateUp: 'enemyEncountRateUp',
  FuncType.enemyProbDown: 'enemyProbDown',
  FuncType.getRewardGift: 'getRewardGift',
  FuncType.sendSupportFriendPoint: 'sendSupportFriendPoint',
  FuncType.movePosition: 'movePosition',
  FuncType.revival: 'revival',
  FuncType.damageNpIndividualSum: 'damageNpIndividualSum',
  FuncType.damageValueSafe: 'damageValueSafe',
  FuncType.friendPointUpDuplicate: 'friendPointUpDuplicate',
  FuncType.moveState: 'moveState',
  FuncType.changeBgmCostume: 'changeBgmCostume',
  FuncType.func126: 'func126',
  FuncType.func127: 'func127',
  FuncType.updateEntryPositions: 'updateEntryPositions',
  FuncType.buddyPointUp: 'buddyPointUp',
};

const _$FuncTargetTypeEnumMap = {
  FuncTargetType.self: 'self',
  FuncTargetType.ptOne: 'ptOne',
  FuncTargetType.ptAnother: 'ptAnother',
  FuncTargetType.ptAll: 'ptAll',
  FuncTargetType.enemy: 'enemy',
  FuncTargetType.enemyAnother: 'enemyAnother',
  FuncTargetType.enemyAll: 'enemyAll',
  FuncTargetType.ptFull: 'ptFull',
  FuncTargetType.enemyFull: 'enemyFull',
  FuncTargetType.ptOther: 'ptOther',
  FuncTargetType.ptOneOther: 'ptOneOther',
  FuncTargetType.ptRandom: 'ptRandom',
  FuncTargetType.enemyOther: 'enemyOther',
  FuncTargetType.enemyRandom: 'enemyRandom',
  FuncTargetType.ptOtherFull: 'ptOtherFull',
  FuncTargetType.enemyOtherFull: 'enemyOtherFull',
  FuncTargetType.ptselectOneSub: 'ptselectOneSub',
  FuncTargetType.ptselectSub: 'ptselectSub',
  FuncTargetType.ptOneAnotherRandom: 'ptOneAnotherRandom',
  FuncTargetType.ptSelfAnotherRandom: 'ptSelfAnotherRandom',
  FuncTargetType.enemyOneAnotherRandom: 'enemyOneAnotherRandom',
  FuncTargetType.ptSelfAnotherFirst: 'ptSelfAnotherFirst',
  FuncTargetType.ptSelfBefore: 'ptSelfBefore',
  FuncTargetType.ptSelfAfter: 'ptSelfAfter',
  FuncTargetType.ptSelfAnotherLast: 'ptSelfAnotherLast',
  FuncTargetType.commandTypeSelfTreasureDevice: 'commandTypeSelfTreasureDevice',
  FuncTargetType.fieldOther: 'fieldOther',
  FuncTargetType.enemyOneNoTargetNoAction: 'enemyOneNoTargetNoAction',
  FuncTargetType.ptOneHpLowestValue: 'ptOneHpLowestValue',
  FuncTargetType.ptOneHpLowestRate: 'ptOneHpLowestRate',
};

const _$FuncApplyTargetEnumMap = {
  FuncApplyTarget.player: 'player',
  FuncApplyTarget.enemy: 'enemy',
  FuncApplyTarget.playerAndEnemy: 'playerAndEnemy',
};

FuncGroup _$FuncGroupFromJson(Map json) => FuncGroup(
      eventId: json['eventId'] as int,
      baseFuncId: json['baseFuncId'] as int,
      nameTotal: json['nameTotal'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String?,
      priority: json['priority'] as int,
      isDispValue: json['isDispValue'] as bool,
    );

BaseFunction _$BaseFunctionFromJson(Map json) => BaseFunction(
      funcId: json['funcId'] as int,
      funcType: $enumDecodeNullable(_$FuncTypeEnumMap, json['funcType']) ??
          FuncType.none,
      funcTargetType:
          $enumDecode(_$FuncTargetTypeEnumMap, json['funcTargetType']),
      funcTargetTeam:
          $enumDecode(_$FuncApplyTargetEnumMap, json['funcTargetTeam']),
      funcPopupText: json['funcPopupText'] as String? ?? "",
      funcPopupIcon: json['funcPopupIcon'] as String?,
      functvals: (json['functvals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      funcquestTvals: (json['funcquestTvals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      funcGroup: (json['funcGroup'] as List<dynamic>?)
              ?.map((e) =>
                  FuncGroup.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      traitVals: (json['traitVals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      buffs: (json['buffs'] as List<dynamic>?)
              ?.map((e) => Buff.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Buff _$BuffFromJson(Map json) => Buff(
      id: json['id'] as int,
      name: json['name'] as String,
      detail: json['detail'] as String,
      icon: json['icon'] as String?,
      type:
          $enumDecodeNullable(_$BuffTypeEnumMap, json['type']) ?? BuffType.none,
      buffGroup: json['buffGroup'] as int? ?? 0,
      script: json['script'] == null
          ? null
          : BuffScript.fromJson(
              Map<String, dynamic>.from(json['script'] as Map)),
      vals: (json['vals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      tvals: (json['tvals'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      ckSelfIndv: (json['ckSelfIndv'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      ckOpIndv: (json['ckOpIndv'] as List<dynamic>?)
              ?.map((e) =>
                  NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      maxRate: json['maxRate'] as int,
    );

const _$BuffTypeEnumMap = {
  BuffType.none: 'none',
  BuffType.upCommandatk: 'upCommandatk',
  BuffType.upStarweight: 'upStarweight',
  BuffType.upCriticalpoint: 'upCriticalpoint',
  BuffType.downCriticalpoint: 'downCriticalpoint',
  BuffType.regainNp: 'regainNp',
  BuffType.regainStar: 'regainStar',
  BuffType.regainHp: 'regainHp',
  BuffType.reduceHp: 'reduceHp',
  BuffType.upAtk: 'upAtk',
  BuffType.downAtk: 'downAtk',
  BuffType.upDamage: 'upDamage',
  BuffType.downDamage: 'downDamage',
  BuffType.addDamage: 'addDamage',
  BuffType.subDamage: 'subDamage',
  BuffType.upNpdamage: 'upNpdamage',
  BuffType.downNpdamage: 'downNpdamage',
  BuffType.upDropnp: 'upDropnp',
  BuffType.upCriticaldamage: 'upCriticaldamage',
  BuffType.downCriticaldamage: 'downCriticaldamage',
  BuffType.upSelfdamage: 'upSelfdamage',
  BuffType.downSelfdamage: 'downSelfdamage',
  BuffType.addSelfdamage: 'addSelfdamage',
  BuffType.subSelfdamage: 'subSelfdamage',
  BuffType.avoidance: 'avoidance',
  BuffType.breakAvoidance: 'breakAvoidance',
  BuffType.invincible: 'invincible',
  BuffType.upGrantstate: 'upGrantstate',
  BuffType.downGrantstate: 'downGrantstate',
  BuffType.upTolerance: 'upTolerance',
  BuffType.downTolerance: 'downTolerance',
  BuffType.avoidState: 'avoidState',
  BuffType.donotAct: 'donotAct',
  BuffType.donotSkill: 'donotSkill',
  BuffType.donotNoble: 'donotNoble',
  BuffType.donotRecovery: 'donotRecovery',
  BuffType.disableGender: 'disableGender',
  BuffType.guts: 'guts',
  BuffType.upHate: 'upHate',
  BuffType.addIndividuality: 'addIndividuality',
  BuffType.subIndividuality: 'subIndividuality',
  BuffType.upDefence: 'upDefence',
  BuffType.downDefence: 'downDefence',
  BuffType.upCommandstar: 'upCommandstar',
  BuffType.upCommandnp: 'upCommandnp',
  BuffType.upCommandall: 'upCommandall',
  BuffType.downCommandall: 'downCommandall',
  BuffType.downStarweight: 'downStarweight',
  BuffType.reduceNp: 'reduceNp',
  BuffType.downDropnp: 'downDropnp',
  BuffType.upGainHp: 'upGainHp',
  BuffType.downGainHp: 'downGainHp',
  BuffType.downCommandatk: 'downCommandatk',
  BuffType.downCommanstar: 'downCommanstar',
  BuffType.downCommandnp: 'downCommandnp',
  BuffType.upCriticalrate: 'upCriticalrate',
  BuffType.downCriticalrate: 'downCriticalrate',
  BuffType.pierceInvincible: 'pierceInvincible',
  BuffType.avoidInstantdeath: 'avoidInstantdeath',
  BuffType.upResistInstantdeath: 'upResistInstantdeath',
  BuffType.upNonresistInstantdeath: 'upNonresistInstantdeath',
  BuffType.delayFunction: 'delayFunction',
  BuffType.regainNpUsedNoble: 'regainNpUsedNoble',
  BuffType.deadFunction: 'deadFunction',
  BuffType.upMaxhp: 'upMaxhp',
  BuffType.downMaxhp: 'downMaxhp',
  BuffType.addMaxhp: 'addMaxhp',
  BuffType.subMaxhp: 'subMaxhp',
  BuffType.battlestartFunction: 'battlestartFunction',
  BuffType.wavestartFunction: 'wavestartFunction',
  BuffType.selfturnendFunction: 'selfturnendFunction',
  BuffType.damageFunction: 'damageFunction',
  BuffType.upGivegainHp: 'upGivegainHp',
  BuffType.downGivegainHp: 'downGivegainHp',
  BuffType.commandattackFunction: 'commandattackFunction',
  BuffType.deadattackFunction: 'deadattackFunction',
  BuffType.upSpecialdefence: 'upSpecialdefence',
  BuffType.downSpecialdefence: 'downSpecialdefence',
  BuffType.upDamagedropnp: 'upDamagedropnp',
  BuffType.downDamagedropnp: 'downDamagedropnp',
  BuffType.entryFunction: 'entryFunction',
  BuffType.upChagetd: 'upChagetd',
  BuffType.reflectionFunction: 'reflectionFunction',
  BuffType.upGrantSubstate: 'upGrantSubstate',
  BuffType.downGrantSubstate: 'downGrantSubstate',
  BuffType.upToleranceSubstate: 'upToleranceSubstate',
  BuffType.downToleranceSubstate: 'downToleranceSubstate',
  BuffType.upGrantInstantdeath: 'upGrantInstantdeath',
  BuffType.downGrantInstantdeath: 'downGrantInstantdeath',
  BuffType.gutsRatio: 'gutsRatio',
  BuffType.upDefencecommandall: 'upDefencecommandall',
  BuffType.downDefencecommandall: 'downDefencecommandall',
  BuffType.overwriteBattleclass: 'overwriteBattleclass',
  BuffType.overwriteClassrelatioAtk: 'overwriteClassrelatioAtk',
  BuffType.overwriteClassrelatioDef: 'overwriteClassrelatioDef',
  BuffType.upDamageIndividuality: 'upDamageIndividuality',
  BuffType.downDamageIndividuality: 'downDamageIndividuality',
  BuffType.upDamageIndividualityActiveonly: 'upDamageIndividualityActiveonly',
  BuffType.downDamageIndividualityActiveonly:
      'downDamageIndividualityActiveonly',
  BuffType.upNpturnval: 'upNpturnval',
  BuffType.downNpturnval: 'downNpturnval',
  BuffType.multiattack: 'multiattack',
  BuffType.upGiveNp: 'upGiveNp',
  BuffType.downGiveNp: 'downGiveNp',
  BuffType.upResistanceDelayNpturn: 'upResistanceDelayNpturn',
  BuffType.downResistanceDelayNpturn: 'downResistanceDelayNpturn',
  BuffType.pierceDefence: 'pierceDefence',
  BuffType.upGutsHp: 'upGutsHp',
  BuffType.downGutsHp: 'downGutsHp',
  BuffType.upFuncgainNp: 'upFuncgainNp',
  BuffType.downFuncgainNp: 'downFuncgainNp',
  BuffType.upFuncHpReduce: 'upFuncHpReduce',
  BuffType.downFuncHpReduce: 'downFuncHpReduce',
  BuffType.upDefencecommanDamage: 'upDefencecommanDamage',
  BuffType.downDefencecommanDamage: 'downDefencecommanDamage',
  BuffType.npattackPrevBuff: 'npattackPrevBuff',
  BuffType.fixCommandcard: 'fixCommandcard',
  BuffType.donotGainnp: 'donotGainnp',
  BuffType.fieldIndividuality: 'fieldIndividuality',
  BuffType.donotActCommandtype: 'donotActCommandtype',
  BuffType.upDamageEventPoint: 'upDamageEventPoint',
  BuffType.upDamageSpecial: 'upDamageSpecial',
  BuffType.attackFunction: 'attackFunction',
  BuffType.commandcodeattackFunction: 'commandcodeattackFunction',
  BuffType.donotNobleCondMismatch: 'donotNobleCondMismatch',
  BuffType.donotSelectCommandcard: 'donotSelectCommandcard',
  BuffType.donotReplace: 'donotReplace',
  BuffType.shortenUserEquipSkill: 'shortenUserEquipSkill',
  BuffType.tdTypeChange: 'tdTypeChange',
  BuffType.overwriteClassRelation: 'overwriteClassRelation',
  BuffType.tdTypeChangeArts: 'tdTypeChangeArts',
  BuffType.tdTypeChangeBuster: 'tdTypeChangeBuster',
  BuffType.tdTypeChangeQuick: 'tdTypeChangeQuick',
  BuffType.commandattackBeforeFunction: 'commandattackBeforeFunction',
  BuffType.gutsFunction: 'gutsFunction',
  BuffType.upCriticalRateDamageTaken: 'upCriticalRateDamageTaken',
  BuffType.downCriticalRateDamageTaken: 'downCriticalRateDamageTaken',
  BuffType.upCriticalStarDamageTaken: 'upCriticalStarDamageTaken',
  BuffType.downCriticalStarDamageTaken: 'downCriticalStarDamageTaken',
  BuffType.skillRankUp: 'skillRankUp',
  BuffType.avoidanceIndividuality: 'avoidanceIndividuality',
  BuffType.changeCommandCardType: 'changeCommandCardType',
  BuffType.specialInvincible: 'specialInvincible',
  BuffType.preventDeathByDamage: 'preventDeathByDamage',
  BuffType.commandcodeattackAfterFunction: 'commandcodeattackAfterFunction',
  BuffType.attackBeforeFunction: 'attackBeforeFunction',
  BuffType.donotSkillSelect: 'donotSkillSelect',
  BuffType.buffRate: 'buffRate',
  BuffType.invisibleBattleChara: 'invisibleBattleChara',
  BuffType.counterFunction: 'counterFunction',
};

BuffScript _$BuffScriptFromJson(Map json) => BuffScript(
      checkIndvType: json['checkIndvType'] as int?,
      CheckOpponentBuffTypes: (json['CheckOpponentBuffTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$BuffTypeEnumMap, e))
          .toList(),
      relationId: json['relationId'] == null
          ? null
          : BuffRelationOverwrite.fromJson(
              Map<String, dynamic>.from(json['relationId'] as Map)),
      ReleaseText: json['ReleaseText'] as String?,
      DamageRelease: json['DamageRelease'] as int?,
      INDIVIDUALITIE: json['INDIVIDUALITIE'] == null
          ? null
          : NiceTrait.fromJson(
              Map<String, dynamic>.from(json['INDIVIDUALITIE'] as Map)),
      UpBuffRateBuffIndiv: (json['UpBuffRateBuffIndiv'] as List<dynamic>?)
          ?.map((e) => NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      HP_LOWER: json['HP_LOWER'] as int?,
    );

DataVals _$DataValsFromJson(Map json) => DataVals(
      Rate: json['Rate'] as int?,
      Turn: json['Turn'] as int?,
      Count: json['Count'] as int?,
      Value: json['Value'] as int?,
      Value2: json['Value2'] as int?,
      UseRate: json['UseRate'] as int?,
      Target: json['Target'] as int?,
      Correction: json['Correction'] as int?,
      ParamAdd: json['ParamAdd'] as int?,
      ParamMax: json['ParamMax'] as int?,
      HideMiss: json['HideMiss'] as int?,
      OnField: json['OnField'] as int?,
      HideNoEffect: json['HideNoEffect'] as int?,
      Unaffected: json['Unaffected'] as int?,
      ShowState: json['ShowState'] as int?,
      AuraEffectId: json['AuraEffectId'] as int?,
      ActSet: json['ActSet'] as int?,
      ActSetWeight: json['ActSetWeight'] as int?,
      ShowQuestNoEffect: json['ShowQuestNoEffect'] as int?,
      CheckDead: json['CheckDead'] as int?,
      RatioHPHigh: json['RatioHPHigh'] as int?,
      RatioHPLow: json['RatioHPLow'] as int?,
      SetPassiveFrame: json['SetPassiveFrame'] as int?,
      ProcPassive: json['ProcPassive'] as int?,
      ProcActive: json['ProcActive'] as int?,
      HideParam: json['HideParam'] as int?,
      SkillID: json['SkillID'] as int?,
      SkillLV: json['SkillLV'] as int?,
      ShowCardOnly: json['ShowCardOnly'] as int?,
      EffectSummon: json['EffectSummon'] as int?,
      RatioHPRangeHigh: json['RatioHPRangeHigh'] as int?,
      RatioHPRangeLow: json['RatioHPRangeLow'] as int?,
      TargetList:
          (json['TargetList'] as List<dynamic>?)?.map((e) => e as int).toList(),
      OpponentOnly: json['OpponentOnly'] as int?,
      StatusEffectId: json['StatusEffectId'] as int?,
      EndBattle: json['EndBattle'] as int?,
      LoseBattle: json['LoseBattle'] as int?,
      AddIndividualty: json['AddIndividualty'] as int?,
      AddLinkageTargetIndividualty:
          json['AddLinkageTargetIndividualty'] as int?,
      SameBuffLimitTargetIndividuality:
          json['SameBuffLimitTargetIndividuality'] as int?,
      SameBuffLimitNum: json['SameBuffLimitNum'] as int?,
      CheckDuplicate: json['CheckDuplicate'] as int?,
      OnFieldCount: json['OnFieldCount'] as int?,
      TargetRarityList: (json['TargetRarityList'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      DependFuncId: json['DependFuncId'] as int?,
      InvalidHide: json['InvalidHide'] as int?,
      OutEnemyNpcId: json['OutEnemyNpcId'] as int?,
      InEnemyNpcId: json['InEnemyNpcId'] as int?,
      OutEnemyPosition: json['OutEnemyPosition'] as int?,
      IgnoreIndividuality: json['IgnoreIndividuality'] as int?,
      StarHigher: json['StarHigher'] as int?,
      ChangeTDCommandType: json['ChangeTDCommandType'] as int?,
      ShiftNpcId: json['ShiftNpcId'] as int?,
      DisplayLastFuncInvalidType: json['DisplayLastFuncInvalidType'] as int?,
      AndCheckIndividualityList:
          (json['AndCheckIndividualityList'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      WinBattleNotRelatedSurvivalStatus:
          json['WinBattleNotRelatedSurvivalStatus'] as int?,
      ForceSelfInstantDeath: json['ForceSelfInstantDeath'] as int?,
      ChangeMaxBreakGauge: json['ChangeMaxBreakGauge'] as int?,
      ParamAddMaxValue: json['ParamAddMaxValue'] as int?,
      ParamAddMaxCount: json['ParamAddMaxCount'] as int?,
      LossHpChangeDamage: json['LossHpChangeDamage'] as int?,
      IncludePassiveIndividuality: json['IncludePassiveIndividuality'] as int?,
      MotionChange: json['MotionChange'] as int?,
      PopLabelDelay: json['PopLabelDelay'] as int?,
      NoTargetNoAct: json['NoTargetNoAct'] as int?,
      CardIndex: json['CardIndex'] as int?,
      CardIndividuality: json['CardIndividuality'] as int?,
      WarBoardTakeOverBuff: json['WarBoardTakeOverBuff'] as int?,
      ParamAddSelfIndividuality:
          (json['ParamAddSelfIndividuality'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      ParamAddOpIndividuality:
          (json['ParamAddOpIndividuality'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      ParamAddFieldIndividuality:
          (json['ParamAddFieldIndividuality'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      ParamAddValue: json['ParamAddValue'] as int?,
      MultipleGainStar: json['MultipleGainStar'] as int?,
      NoCheckIndividualityIfNotUnit:
          json['NoCheckIndividualityIfNotUnit'] as int?,
      ForcedEffectSpeedOne: json['ForcedEffectSpeedOne'] as int?,
      SetLimitCount: json['SetLimitCount'] as int?,
      CheckEnemyFieldSpace: json['CheckEnemyFieldSpace'] as int?,
      TriggeredFuncPosition: json['TriggeredFuncPosition'] as int?,
      DamageCount: json['DamageCount'] as int?,
      DamageRates: (json['DamageRates'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      OnPositions: (json['OnPositions'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      OffPositions: (json['OffPositions'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      TargetIndiv: json['TargetIndiv'] as int?,
      IncludeIgnoreIndividuality: json['IncludeIgnoreIndividuality'] as int?,
      EvenIfWinDie: json['EvenIfWinDie'] as int?,
      CallSvtEffectId: json['CallSvtEffectId'] as int?,
      ForceAddState: json['ForceAddState'] as int?,
      UnSubState: json['UnSubState'] as int?,
      ForceSubState: json['ForceSubState'] as int?,
      IgnoreIndivUnreleaseable: json['IgnoreIndivUnreleaseable'] as int?,
      OnParty: json['OnParty'] as int?,
      CounterId: json['CounterId'] as int?,
      CounterLv: json['CounterLv'] as int?,
      CounterOc: json['CounterOc'] as int?,
      UseTreasureDevice: json['UseTreasureDevice'] as int?,
      SkillReaction: json['SkillReaction'] as int?,
      ApplySupportSvt: json['ApplySupportSvt'] as int?,
      BehaveAsFamilyBuff: json['BehaveAsFamilyBuff'] as int?,
      UnSubStateWhileLinkedToOthers:
          json['UnSubStateWhileLinkedToOthers'] as int?,
      AllowSubBgmPlaying: json['AllowSubBgmPlaying'] as int?,
      NotAccompanyWhenLinkedTargetMoveState:
          json['NotAccompanyWhenLinkedTargetMoveState'] as int?,
      Individuality: json['Individuality'] as int?,
      EventId: json['EventId'] as int?,
      AddCount: json['AddCount'] as int?,
      RateCount: json['RateCount'] as int?,
      DropRateCount: json['DropRateCount'] as int?,
      DependFuncVals: json['DependFuncVals'] == null
          ? null
          : DataVals.fromJson(
              Map<String, dynamic>.from(json['DependFuncVals'] as Map)),
    );

Map<String, dynamic> _$DataValsToJson(DataVals instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Rate', instance.Rate);
  writeNotNull('Turn', instance.Turn);
  writeNotNull('Count', instance.Count);
  writeNotNull('Value', instance.Value);
  writeNotNull('Value2', instance.Value2);
  writeNotNull('UseRate', instance.UseRate);
  writeNotNull('Target', instance.Target);
  writeNotNull('Correction', instance.Correction);
  writeNotNull('ParamAdd', instance.ParamAdd);
  writeNotNull('ParamMax', instance.ParamMax);
  writeNotNull('HideMiss', instance.HideMiss);
  writeNotNull('OnField', instance.OnField);
  writeNotNull('HideNoEffect', instance.HideNoEffect);
  writeNotNull('Unaffected', instance.Unaffected);
  writeNotNull('ShowState', instance.ShowState);
  writeNotNull('AuraEffectId', instance.AuraEffectId);
  writeNotNull('ActSet', instance.ActSet);
  writeNotNull('ActSetWeight', instance.ActSetWeight);
  writeNotNull('ShowQuestNoEffect', instance.ShowQuestNoEffect);
  writeNotNull('CheckDead', instance.CheckDead);
  writeNotNull('RatioHPHigh', instance.RatioHPHigh);
  writeNotNull('RatioHPLow', instance.RatioHPLow);
  writeNotNull('SetPassiveFrame', instance.SetPassiveFrame);
  writeNotNull('ProcPassive', instance.ProcPassive);
  writeNotNull('ProcActive', instance.ProcActive);
  writeNotNull('HideParam', instance.HideParam);
  writeNotNull('SkillID', instance.SkillID);
  writeNotNull('SkillLV', instance.SkillLV);
  writeNotNull('ShowCardOnly', instance.ShowCardOnly);
  writeNotNull('EffectSummon', instance.EffectSummon);
  writeNotNull('RatioHPRangeHigh', instance.RatioHPRangeHigh);
  writeNotNull('RatioHPRangeLow', instance.RatioHPRangeLow);
  writeNotNull('TargetList', instance.TargetList);
  writeNotNull('OpponentOnly', instance.OpponentOnly);
  writeNotNull('StatusEffectId', instance.StatusEffectId);
  writeNotNull('EndBattle', instance.EndBattle);
  writeNotNull('LoseBattle', instance.LoseBattle);
  writeNotNull('AddIndividualty', instance.AddIndividualty);
  writeNotNull(
      'AddLinkageTargetIndividualty', instance.AddLinkageTargetIndividualty);
  writeNotNull('SameBuffLimitTargetIndividuality',
      instance.SameBuffLimitTargetIndividuality);
  writeNotNull('SameBuffLimitNum', instance.SameBuffLimitNum);
  writeNotNull('CheckDuplicate', instance.CheckDuplicate);
  writeNotNull('OnFieldCount', instance.OnFieldCount);
  writeNotNull('TargetRarityList', instance.TargetRarityList);
  writeNotNull('DependFuncId', instance.DependFuncId);
  writeNotNull('InvalidHide', instance.InvalidHide);
  writeNotNull('OutEnemyNpcId', instance.OutEnemyNpcId);
  writeNotNull('InEnemyNpcId', instance.InEnemyNpcId);
  writeNotNull('OutEnemyPosition', instance.OutEnemyPosition);
  writeNotNull('IgnoreIndividuality', instance.IgnoreIndividuality);
  writeNotNull('StarHigher', instance.StarHigher);
  writeNotNull('ChangeTDCommandType', instance.ChangeTDCommandType);
  writeNotNull('ShiftNpcId', instance.ShiftNpcId);
  writeNotNull(
      'DisplayLastFuncInvalidType', instance.DisplayLastFuncInvalidType);
  writeNotNull('AndCheckIndividualityList', instance.AndCheckIndividualityList);
  writeNotNull('WinBattleNotRelatedSurvivalStatus',
      instance.WinBattleNotRelatedSurvivalStatus);
  writeNotNull('ForceSelfInstantDeath', instance.ForceSelfInstantDeath);
  writeNotNull('ChangeMaxBreakGauge', instance.ChangeMaxBreakGauge);
  writeNotNull('ParamAddMaxValue', instance.ParamAddMaxValue);
  writeNotNull('ParamAddMaxCount', instance.ParamAddMaxCount);
  writeNotNull('LossHpChangeDamage', instance.LossHpChangeDamage);
  writeNotNull(
      'IncludePassiveIndividuality', instance.IncludePassiveIndividuality);
  writeNotNull('MotionChange', instance.MotionChange);
  writeNotNull('PopLabelDelay', instance.PopLabelDelay);
  writeNotNull('NoTargetNoAct', instance.NoTargetNoAct);
  writeNotNull('CardIndex', instance.CardIndex);
  writeNotNull('CardIndividuality', instance.CardIndividuality);
  writeNotNull('WarBoardTakeOverBuff', instance.WarBoardTakeOverBuff);
  writeNotNull('ParamAddSelfIndividuality', instance.ParamAddSelfIndividuality);
  writeNotNull('ParamAddOpIndividuality', instance.ParamAddOpIndividuality);
  writeNotNull(
      'ParamAddFieldIndividuality', instance.ParamAddFieldIndividuality);
  writeNotNull('ParamAddValue', instance.ParamAddValue);
  writeNotNull('MultipleGainStar', instance.MultipleGainStar);
  writeNotNull(
      'NoCheckIndividualityIfNotUnit', instance.NoCheckIndividualityIfNotUnit);
  writeNotNull('ForcedEffectSpeedOne', instance.ForcedEffectSpeedOne);
  writeNotNull('SetLimitCount', instance.SetLimitCount);
  writeNotNull('CheckEnemyFieldSpace', instance.CheckEnemyFieldSpace);
  writeNotNull('TriggeredFuncPosition', instance.TriggeredFuncPosition);
  writeNotNull('DamageCount', instance.DamageCount);
  writeNotNull('DamageRates', instance.DamageRates);
  writeNotNull('OnPositions', instance.OnPositions);
  writeNotNull('OffPositions', instance.OffPositions);
  writeNotNull('TargetIndiv', instance.TargetIndiv);
  writeNotNull(
      'IncludeIgnoreIndividuality', instance.IncludeIgnoreIndividuality);
  writeNotNull('EvenIfWinDie', instance.EvenIfWinDie);
  writeNotNull('CallSvtEffectId', instance.CallSvtEffectId);
  writeNotNull('ForceAddState', instance.ForceAddState);
  writeNotNull('UnSubState', instance.UnSubState);
  writeNotNull('ForceSubState', instance.ForceSubState);
  writeNotNull('IgnoreIndivUnreleaseable', instance.IgnoreIndivUnreleaseable);
  writeNotNull('OnParty', instance.OnParty);
  writeNotNull('CounterId', instance.CounterId);
  writeNotNull('CounterLv', instance.CounterLv);
  writeNotNull('CounterOc', instance.CounterOc);
  writeNotNull('UseTreasureDevice', instance.UseTreasureDevice);
  writeNotNull('SkillReaction', instance.SkillReaction);
  writeNotNull('BehaveAsFamilyBuff', instance.BehaveAsFamilyBuff);
  writeNotNull(
      'UnSubStateWhileLinkedToOthers', instance.UnSubStateWhileLinkedToOthers);
  writeNotNull('AllowSubBgmPlaying', instance.AllowSubBgmPlaying);
  writeNotNull('NotAccompanyWhenLinkedTargetMoveState',
      instance.NotAccompanyWhenLinkedTargetMoveState);
  writeNotNull('ApplySupportSvt', instance.ApplySupportSvt);
  writeNotNull('Individuality', instance.Individuality);
  writeNotNull('EventId', instance.EventId);
  writeNotNull('AddCount', instance.AddCount);
  writeNotNull('RateCount', instance.RateCount);
  writeNotNull('DropRateCount', instance.DropRateCount);
  writeNotNull('DependFuncVals', instance.DependFuncVals?.toJson());
  return val;
}
