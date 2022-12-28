// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../models/gamedata/const_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstGameData _$ConstGameDataFromJson(Map json) => ConstGameData(
      attributeRelation: (json['attributeRelation'] as Map).map(
        (k, e) => MapEntry(
            $enumDecode(_$AttributeEnumMap, k),
            (e as Map).map(
              (k, e) => MapEntry($enumDecode(_$AttributeEnumMap, k), e as int),
            )),
      ),
      buffActions: (json['buffActions'] as Map).map(
        (k, e) => MapEntry(const BuffActionConverter().fromJson(k as String),
            BuffActionDetail.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      classInfo: (json['classInfo'] as Map?)?.map(
            (k, e) => MapEntry(int.parse(k as String),
                SvtClassInfo.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
      cardInfo: (json['cardInfo'] as Map).map(
        (k, e) => MapEntry(
            $enumDecode(_$CardTypeEnumMap, k),
            (e as Map).map(
              (k, e) => MapEntry(int.parse(k as String),
                  CardInfo.fromJson(Map<String, dynamic>.from(e as Map))),
            )),
      ),
      classAttackRate: (json['classAttackRate'] as Map).map(
        (k, e) =>
            MapEntry(const SvtClassConverter().fromJson(k as String), e as int),
      ),
      classRelation: (json['classRelation'] as Map).map(
        (k, e) => MapEntry(
            const SvtClassConverter().fromJson(k as String),
            (e as Map).map(
              (k, e) => MapEntry(
                  const SvtClassConverter().fromJson(k as String), e as int),
            )),
      ),
      constants: GameConstants.fromJson(
          Map<String, dynamic>.from(json['constants'] as Map)),
      svtGrailCost: (json['svtGrailCost'] as Map).map(
        (k, e) => MapEntry(
            int.parse(k as String),
            (e as Map).map(
              (k, e) => MapEntry(
                  int.parse(k as String),
                  GrailCostDetail.fromJson(
                      Map<String, dynamic>.from(e as Map))),
            )),
      ),
      userLevel: (json['userLevel'] as Map).map(
        (k, e) => MapEntry(int.parse(k as String),
            MasterUserLvDetail.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

const _$AttributeEnumMap = {
  Attribute.human: 'human',
  Attribute.sky: 'sky',
  Attribute.earth: 'earth',
  Attribute.star: 'star',
  Attribute.beast: 'beast',
  Attribute.void_: 'void',
};

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

BuffActionDetail _$BuffActionDetailFromJson(Map json) => BuffActionDetail(
      limit: $enumDecode(_$BuffLimitEnumMap, json['limit']),
      plusTypes: (json['plusTypes'] as List<dynamic>)
          .map((e) => const BuffTypeConverter().fromJson(e as String))
          .toList(),
      minusTypes: (json['minusTypes'] as List<dynamic>)
          .map((e) => const BuffTypeConverter().fromJson(e as String))
          .toList(),
      baseParam: json['baseParam'] as int,
      baseValue: json['baseValue'] as int,
      isRec: json['isRec'] as bool,
      plusAction: json['plusAction'] as int,
      maxRate: (json['maxRate'] as List<dynamic>).map((e) => e as int).toList(),
    );

const _$BuffLimitEnumMap = {
  BuffLimit.none: 'none',
  BuffLimit.upper: 'upper',
  BuffLimit.lower: 'lower',
  BuffLimit.normal: 'normal',
};

SvtClassInfo _$SvtClassInfoFromJson(Map json) => SvtClassInfo(
      id: json['id'] as int,
      className: _$JsonConverterFromJson<String, SvtClass>(
          json['className'], const SvtClassConverter().fromJson),
      name: json['name'] as String,
      individuality:
          $enumDecodeNullable(_$TraitEnumMap, json['individuality']) ??
              Trait.unknown,
      attackRate: json['attackRate'] as int,
      imageId: json['imageId'] as int,
      iconImageId: json['iconImageId'] as int,
      frameId: json['frameId'] as int,
      priority: json['priority'] as int,
      groupType: json['groupType'] as int,
      relationId: json['relationId'] as int,
      supportGroup: json['supportGroup'] as int,
      autoSelSupportType: json['autoSelSupportType'] as int,
    );

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$TraitEnumMap = {
  Trait.unknown: 'unknown',
  Trait.genderMale: 'genderMale',
  Trait.genderFemale: 'genderFemale',
  Trait.genderUnknown: 'genderUnknown',
  Trait.classSaber: 'classSaber',
  Trait.classLancer: 'classLancer',
  Trait.classArcher: 'classArcher',
  Trait.classRider: 'classRider',
  Trait.classCaster: 'classCaster',
  Trait.classAssassin: 'classAssassin',
  Trait.classBerserker: 'classBerserker',
  Trait.classShielder: 'classShielder',
  Trait.classRuler: 'classRuler',
  Trait.classAlterEgo: 'classAlterEgo',
  Trait.classAvenger: 'classAvenger',
  Trait.classDemonGodPillar: 'classDemonGodPillar',
  Trait.classGrandCaster: 'classGrandCaster',
  Trait.classBeastI: 'classBeastI',
  Trait.classBeastII: 'classBeastII',
  Trait.classMoonCancer: 'classMoonCancer',
  Trait.classBeastIIIR: 'classBeastIIIR',
  Trait.classForeigner: 'classForeigner',
  Trait.classBeastIIIL: 'classBeastIIIL',
  Trait.classBeastUnknown: 'classBeastUnknown',
  Trait.classPretender: 'classPretender',
  Trait.classUOlgaMarie: 'classUOlgaMarie',
  Trait.attributeSky: 'attributeSky',
  Trait.attributeEarth: 'attributeEarth',
  Trait.attributeHuman: 'attributeHuman',
  Trait.attributeStar: 'attributeStar',
  Trait.attributeBeast: 'attributeBeast',
  Trait.alignmentLawful: 'alignmentLawful',
  Trait.alignmentChaotic: 'alignmentChaotic',
  Trait.alignmentNeutral: 'alignmentNeutral',
  Trait.alignmentGood: 'alignmentGood',
  Trait.alignmentEvil: 'alignmentEvil',
  Trait.alignmentBalanced: 'alignmentBalanced',
  Trait.alignmentMadness: 'alignmentMadness',
  Trait.alignmentSummer: 'alignmentSummer',
  Trait.basedOnServant: 'basedOnServant',
  Trait.human: 'human',
  Trait.undead: 'undead',
  Trait.artificialDemon: 'artificialDemon',
  Trait.demonBeast: 'demonBeast',
  Trait.demon: 'demon',
  Trait.soldier: 'soldier',
  Trait.amazoness: 'amazoness',
  Trait.skeleton: 'skeleton',
  Trait.zombie: 'zombie',
  Trait.ghost: 'ghost',
  Trait.automata: 'automata',
  Trait.golem: 'golem',
  Trait.spellBook: 'spellBook',
  Trait.homunculus: 'homunculus',
  Trait.lamia: 'lamia',
  Trait.centaur: 'centaur',
  Trait.werebeast: 'werebeast',
  Trait.chimera: 'chimera',
  Trait.wyvern: 'wyvern',
  Trait.dragonType: 'dragonType',
  Trait.demon2: 'demon2',
  Trait.handOrDoor: 'handOrDoor',
  Trait.demonGodPillar: 'demonGodPillar',
  Trait.oni: 'oni',
  Trait.hand: 'hand',
  Trait.door: 'door',
  Trait.threatToHumanity: 'threatToHumanity',
  Trait.divine: 'divine',
  Trait.humanoid: 'humanoid',
  Trait.dragon: 'dragon',
  Trait.dragonSlayer: 'dragonSlayer',
  Trait.roman: 'roman',
  Trait.wildbeast: 'wildbeast',
  Trait.atalante: 'atalante',
  Trait.saberface: 'saberface',
  Trait.weakToEnumaElish: 'weakToEnumaElish',
  Trait.riding: 'riding',
  Trait.arthur: 'arthur',
  Trait.skyOrEarthServant: 'skyOrEarthServant',
  Trait.brynhildsBeloved: 'brynhildsBeloved',
  Trait.undeadOrDemon: 'undeadOrDemon',
  Trait.demonic: 'demonic',
  Trait.skyOrEarthExceptPseudoAndDemiServant:
      'skyOrEarthExceptPseudoAndDemiServant',
  Trait.divineOrDemonOrUndead: 'divineOrDemonOrUndead',
  Trait.saberClassServant: 'saberClassServant',
  Trait.superGiant: 'superGiant',
  Trait.king: 'king',
  Trait.greekMythologyMales: 'greekMythologyMales',
  Trait.illya: 'illya',
  Trait.feminineLookingServant: 'feminineLookingServant',
  Trait.associatedToTheArgo: 'associatedToTheArgo',
  Trait.genderCaenisServant: 'genderCaenisServant',
  Trait.hominidaeServant: 'hominidaeServant',
  Trait.blessedByKur: 'blessedByKur',
  Trait.demonicBeastServant: 'demonicBeastServant',
  Trait.canBeInBattle: 'canBeInBattle',
  Trait.notBasedOnServant: 'notBasedOnServant',
  Trait.livingHuman: 'livingHuman',
  Trait.cardArts: 'cardArts',
  Trait.cardBuster: 'cardBuster',
  Trait.cardQuick: 'cardQuick',
  Trait.cardExtra: 'cardExtra',
  Trait.buffPositiveEffect: 'buffPositiveEffect',
  Trait.buffNegativeEffect: 'buffNegativeEffect',
  Trait.buffIncreaseDamage: 'buffIncreaseDamage',
  Trait.buffIncreaseDefence: 'buffIncreaseDefence',
  Trait.buffDecreaseDamage: 'buffDecreaseDamage',
  Trait.buffDecreaseDefence: 'buffDecreaseDefence',
  Trait.buffMentalEffect: 'buffMentalEffect',
  Trait.buffPoison: 'buffPoison',
  Trait.buffCharm: 'buffCharm',
  Trait.buffPetrify: 'buffPetrify',
  Trait.buffStun: 'buffStun',
  Trait.buffBurn: 'buffBurn',
  Trait.buffSpecialResistUp: 'buffSpecialResistUp',
  Trait.buffSpecialResistDown: 'buffSpecialResistDown',
  Trait.buffEvadeAndInvincible: 'buffEvadeAndInvincible',
  Trait.buffSureHit: 'buffSureHit',
  Trait.buffNpSeal: 'buffNpSeal',
  Trait.buffEvade: 'buffEvade',
  Trait.buffInvincible: 'buffInvincible',
  Trait.buffTargetFocus: 'buffTargetFocus',
  Trait.buffGuts: 'buffGuts',
  Trait.skillSeal: 'skillSeal',
  Trait.buffCurse: 'buffCurse',
  Trait.buffAtkUp: 'buffAtkUp',
  Trait.buffPowerModStrUp: 'buffPowerModStrUp',
  Trait.buffDamagePlus: 'buffDamagePlus',
  Trait.buffNpDamageUp: 'buffNpDamageUp',
  Trait.buffCritDamageUp: 'buffCritDamageUp',
  Trait.buffCritRateUp: 'buffCritRateUp',
  Trait.buffAtkDown: 'buffAtkDown',
  Trait.buffPowerModStrDown: 'buffPowerModStrDown',
  Trait.buffDamageMinus: 'buffDamageMinus',
  Trait.buffNpDamageDown: 'buffNpDamageDown',
  Trait.buffCritDamageDown: 'buffCritDamageDown',
  Trait.buffCritRateDown: 'buffCritRateDown',
  Trait.buffDeathResistDown: 'buffDeathResistDown',
  Trait.buffDefenceUp: 'buffDefenceUp',
  Trait.buffMaxHpUpPercent: 'buffMaxHpUpPercent',
  Trait.buffMaxHpDownPercent: 'buffMaxHpDownPercent',
  Trait.buffMaxHpUp: 'buffMaxHpUp',
  Trait.buffMaxHpDown: 'buffMaxHpDown',
  Trait.buffImmobilize: 'buffImmobilize',
  Trait.buffIncreasePoisonEffectiveness: 'buffIncreasePoisonEffectiveness',
  Trait.buffPigify: 'buffPigify',
  Trait.buffCurseEffectUp: 'buffCurseEffectUp',
  Trait.buffTerrorStunChanceAfterTurn: 'buffTerrorStunChanceAfterTurn',
  Trait.buffConfusion: 'buffConfusion',
  Trait.buffOffensiveMode: 'buffOffensiveMode',
  Trait.buffDefensiveMode: 'buffDefensiveMode',
  Trait.buffLockCardsDeck: 'buffLockCardsDeck',
  Trait.buffDisableColorCard: 'buffDisableColorCard',
  Trait.buffChangeField: 'buffChangeField',
  Trait.buffDefUp: 'buffDefUp',
  Trait.buffInvinciblePierce: 'buffInvinciblePierce',
  Trait.buffHpRecoveryPerTurn: 'buffHpRecoveryPerTurn',
  Trait.buffNegativeEffectImmunity: 'buffNegativeEffectImmunity',
  Trait.buffDelayedNegativeEffect: 'buffDelayedNegativeEffect',
  Trait.attackPhysical: 'attackPhysical',
  Trait.attackProjectile: 'attackProjectile',
  Trait.attackMagical: 'attackMagical',
  Trait.criticalHit: 'criticalHit',
  Trait.faceCard: 'faceCard',
  Trait.cardNP: 'cardNP',
  Trait.kingproteaProliferation: 'kingproteaProliferation',
  Trait.kingproteaInfiniteProliferation: 'kingproteaInfiniteProliferation',
  Trait.kingproteaProliferationNPDefense: 'kingproteaProliferationNPDefense',
  Trait.fieldSunlight: 'fieldSunlight',
  Trait.fieldShore: 'fieldShore',
  Trait.fieldForest: 'fieldForest',
  Trait.fieldBurning: 'fieldBurning',
  Trait.fieldCity: 'fieldCity',
  Trait.shadowServant: 'shadowServant',
  Trait.aoeNP: 'aoeNP',
  Trait.stNP: 'stNP',
  Trait.giant: 'giant',
  Trait.childServant: 'childServant',
  Trait.buffSpecialInvincible: 'buffSpecialInvincible',
  Trait.buffSkillRankUp: 'buffSkillRankUp',
  Trait.buffSleep: 'buffSleep',
  Trait.nobunaga: 'nobunaga',
  Trait.fieldImaginarySpace: 'fieldImaginarySpace',
  Trait.existenceOutsideTheDomain: 'existenceOutsideTheDomain',
  Trait.curse: 'curse',
  Trait.fieldShoreOrImaginarySpace: 'fieldShoreOrImaginarySpace',
  Trait.shutenOnField: 'shutenOnField',
  Trait.shuten: 'shuten',
  Trait.genji: 'genji',
  Trait.vengeance: 'vengeance',
  Trait.enemyGardenOfSinnersLivingCorpse: 'enemyGardenOfSinnersLivingCorpse',
  Trait.enemyGardenOfSinnersApartmentGhostAndSkeleton:
      'enemyGardenOfSinnersApartmentGhostAndSkeleton',
  Trait.enemyGardenOfSinnersBaseModel: 'enemyGardenOfSinnersBaseModel',
  Trait.enemyGardenOfSinnersVengefulSpiritOfSevenPeople:
      'enemyGardenOfSinnersVengefulSpiritOfSevenPeople',
  Trait.enemySaberEliWerebeastAndHomunculusAndKnight:
      'enemySaberEliWerebeastAndHomunculusAndKnight',
  Trait.enemySaberEliSkeletonAndGhostAndLamia:
      'enemySaberEliSkeletonAndGhostAndLamia',
  Trait.enemySaberEliBugAndGolem: 'enemySaberEliBugAndGolem',
  Trait.enemySeraphEater: 'enemySeraphEater',
  Trait.enemySeraphShapeshifter: 'enemySeraphShapeshifter',
  Trait.enemySeraphTypeI: 'enemySeraphTypeI',
  Trait.enemySeraphTypeSakura: 'enemySeraphTypeSakura',
  Trait.enemyHimejiCastleKnightAndGazerAndMassProduction:
      'enemyHimejiCastleKnightAndGazerAndMassProduction',
  Trait.enemyHimejiCastleDronesAndHomunculusAndAutomata:
      'enemyHimejiCastleDronesAndHomunculusAndAutomata',
  Trait.enemyHimejiCastleSkeletonAndScarecrow:
      'enemyHimejiCastleSkeletonAndScarecrow',
  Trait.enemyGuda3MiniNobu: 'enemyGuda3MiniNobu',
  Trait.enemyDavinciTrueEnemy: 'enemyDavinciTrueEnemy',
  Trait.enemyDavinciFalseEnemy: 'enemyDavinciFalseEnemy',
  Trait.enemyCaseFilesRareEnemy: 'enemyCaseFilesRareEnemy',
  Trait.enemyLasVegasBonusEnemy: 'enemyLasVegasBonusEnemy',
  Trait.enemySummerCampRareEnemy: 'enemySummerCampRareEnemy',
  Trait.enemyLittleBigTenguTsuwamonoEnemy: 'enemyLittleBigTenguTsuwamonoEnemy',
  Trait.eventSaberWars: 'eventSaberWars',
  Trait.eventRashomon: 'eventRashomon',
  Trait.eventOnigashima: 'eventOnigashima',
  Trait.eventOnigashimaRaid: 'eventOnigashimaRaid',
  Trait.eventPrisma: 'eventPrisma',
  Trait.eventPrismaWorldEndMatch: 'eventPrismaWorldEndMatch',
  Trait.eventNeroFest2: 'eventNeroFest2',
  Trait.eventGuda2: 'eventGuda2',
  Trait.eventNeroFest3: 'eventNeroFest3',
  Trait.eventSetsubun: 'eventSetsubun',
  Trait.eventApocrypha: 'eventApocrypha',
  Trait.eventBattleInNewYork1: 'eventBattleInNewYork1',
  Trait.eventOniland: 'eventOniland',
  Trait.eventOoku: 'eventOoku',
  Trait.eventGuda4: 'eventGuda4',
  Trait.eventLasVegas: 'eventLasVegas',
  Trait.eventBattleInNewYork2: 'eventBattleInNewYork2',
  Trait.eventSaberWarsII: 'eventSaberWarsII',
  Trait.eventSummerCamp: 'eventSummerCamp',
  Trait.eventGuda5: 'eventGuda5',
  Trait.cursedBook: 'cursedBook',
  Trait.buffCharmFemale: 'buffCharmFemale',
  Trait.mechanical: 'mechanical',
  Trait.fae: 'fae',
  Trait.hasCostume: 'hasCostume',
  Trait.weakPointsRevealed: 'weakPointsRevealed',
  Trait.chenGongNpBlock: 'chenGongNpBlock',
  Trait.knightsOfTheRound: 'knightsOfTheRound',
  Trait.divineSpirit: 'divineSpirit',
  Trait.buffNullifyBuff: 'buffNullifyBuff',
  Trait.enemyGudaMiniNobu: 'enemyGudaMiniNobu',
  Trait.burningLove: 'burningLove',
  Trait.buffStrongAgainstWildBeast: 'buffStrongAgainstWildBeast',
  Trait.buffStrongAgainstDragon: 'buffStrongAgainstDragon',
  Trait.fairyTaleServant: 'fairyTaleServant',
  Trait.classBeastIV: 'classBeastIV',
  Trait.havingAnimalsCharacteristics: 'havingAnimalsCharacteristics',
  Trait.like: 'like',
  Trait.exaltation: 'exaltation',
  Trait.yuMeiren: 'yuMeiren',
  Trait.milleniumCastle: 'milleniumCastle',
  Trait.protoMerlinNPChargeBlock: 'protoMerlinNPChargeBlock',
  Trait.valkyrie: 'valkyrie',
  Trait.immuneToPigify: 'immuneToPigify',
  Trait.summerModeServant: 'summerModeServant',
  Trait.shinsengumiServant: 'shinsengumiServant',
  Trait.ryozanpaku: 'ryozanpaku',
};

CardInfo _$CardInfoFromJson(Map json) => CardInfo(
      individuality: (json['individuality'] as List<dynamic>)
          .map((e) => NiceTrait.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      adjustAtk: json['adjustAtk'] as int,
      adjustTdGauge: json['adjustTdGauge'] as int,
      adjustCritical: json['adjustCritical'] as int,
      addAtk: json['addAtk'] as int,
      addTdGauge: json['addTdGauge'] as int,
      addCritical: json['addCritical'] as int,
    );

GrailCostDetail _$GrailCostDetailFromJson(Map json) => GrailCostDetail(
      qp: json['qp'] as int,
      addLvMax: json['addLvMax'] as int,
      frameType:
          $enumDecodeNullable(_$SvtFrameTypeEnumMap, json['frameType']) ??
              SvtFrameType.gold,
    );

const _$SvtFrameTypeEnumMap = {
  SvtFrameType.black: 'black',
  SvtFrameType.bronze: 'bronze',
  SvtFrameType.silver: 'silver',
  SvtFrameType.gold: 'gold',
  SvtFrameType.frame0801: 'frame0801',
  SvtFrameType.frame0802: 'frame0802',
  SvtFrameType.frame0803: 'frame0803',
  SvtFrameType.frame0804: 'frame0804',
};

MasterUserLvDetail _$MasterUserLvDetailFromJson(Map json) => MasterUserLvDetail(
      requiredExp: json['requiredExp'] as int,
      maxAp: json['maxAp'] as int,
      maxCost: json['maxCost'] as int,
      maxFriend: json['maxFriend'] as int,
      gift: json['gift'] == null
          ? null
          : Gift.fromJson(Map<String, dynamic>.from(json['gift'] as Map)),
    );

GameConstants _$GameConstantsFromJson(Map json) => GameConstants(
      attackRate: json['attackRate'] as int? ?? 230,
      attackRateRandomMax: json['attackRateRandomMax'] as int? ?? 1100,
      attackRateRandomMin: json['attackRateRandomMin'] as int? ?? 900,
      backsideClassImageId: json['backsideClassImageId'] as int? ?? 102,
      backsideSvtEquipImageId: json['backsideSvtEquipImageId'] as int? ?? 103,
      backsideSvtImageId: json['backsideSvtImageId'] as int? ?? 101,
      battleEffectIdAvoidance: json['battleEffectIdAvoidance'] as int? ?? 6216,
      battleEffectIdAvoidancePierce:
          json['battleEffectIdAvoidancePierce'] as int? ?? 6217,
      battleEffectIdInvincible:
          json['battleEffectIdInvincible'] as int? ?? 6214,
      battleEffectIdInvinciblePierce:
          json['battleEffectIdInvinciblePierce'] as int? ?? 6215,
      battleItemDispColumn: json['battleItemDispColumn'] as int? ?? 7,
      bpExpression: json['bpExpression'] as int? ?? 1,
      chainbonusArtsRate: json['chainbonusArtsRate'] as int? ?? 200,
      chainbonusBusterRate: json['chainbonusBusterRate'] as int? ?? 200,
      chainbonusQuick: json['chainbonusQuick'] as int? ?? 10,
      commandArts: json['commandArts'] as int? ?? 4001,
      commandBuster: json['commandBuster'] as int? ?? 4002,
      commandCardPrmUpMax: json['commandCardPrmUpMax'] as int? ?? 500,
      commandCodeDetachingItemId:
          json['commandCodeDetachingItemId'] as int? ?? 5003,
      commandQuick: json['commandQuick'] as int? ?? 4003,
      criticalAttackRate: json['criticalAttackRate'] as int? ?? 2000,
      criticalIndividuality: json['criticalIndividuality'] as int? ?? 4100,
      criticalRatePerStar: json['criticalRatePerStar'] as int? ?? 100,
      criticalStarRate: json['criticalStarRate'] as int? ?? 200,
      criticalTdPointRate: json['criticalTdPointRate'] as int? ?? 2000,
      deckMax: json['deckMax'] as int? ?? 10,
      enemyAttackRateArts: json['enemyAttackRateArts'] as int? ?? 1000,
      enemyAttackRateBuster: json['enemyAttackRateBuster'] as int? ?? 1500,
      enemyAttackRateQuick: json['enemyAttackRateQuick'] as int? ?? 800,
      enemyMaxBattleCount: json['enemyMaxBattleCount'] as int? ?? 5,
      extraAttackRateGrand: json['extraAttackRateGrand'] as int? ?? 3500,
      extraAttackRateSingle: json['extraAttackRateSingle'] as int? ?? 2000,
      extraCriticalRate: json['extraCriticalRate'] as int? ?? 0,
      followerListExpireAt: json['followerListExpireAt'] as int? ?? 3600,
      followerRefreshResetTime: json['followerRefreshResetTime'] as int? ?? 10,
      followFriendPoint: json['followFriendPoint'] as int? ?? 50,
      friendNum: json['friendNum'] as int? ?? 28,
      fullTdPoint: json['fullTdPoint'] as int? ?? 10000,
      heroineChangecardvoice: json['heroineChangecardvoice'] as int? ?? 800104,
      hydeSvtId: json['hydeSvtId'] as int? ?? 600710,
      jekyllSvtId: json['jekyllSvtId'] as int? ?? 600700,
      largeSuccessMultExp: json['largeSuccessMultExp'] as int? ?? 2000,
      largeSuccessRate: json['largeSuccessRate'] as int? ?? 100,
      mashuChangeQuestId: json['mashuChangeQuestId'] as int? ?? 1000501,
      mashuChangeWarId: json['mashuChangeWarId'] as int? ?? 105,
      mashuSvtId1: json['mashuSvtId1'] as int? ?? 800100,
      mashuSvtId2: json['mashuSvtId2'] as int? ?? 800101,
      maxBlackListNum: json['maxBlackListNum'] as int? ?? 50,
      maxCommandSpell: json['maxCommandSpell'] as int? ?? 3,
      maxDropFactor: json['maxDropFactor'] as int? ?? 1000,
      maxEventPoint: json['maxEventPoint'] as int? ?? 999999999,
      maxExpFactor: json['maxExpFactor'] as int? ?? 3000,
      maxFriendpoint: json['maxFriendpoint'] as int? ?? 999999999,
      maxFriendpointBoostItemDailyReceive:
          json['maxFriendpointBoostItemDailyReceive'] as int? ?? 100,
      maxFriendpointBoostItemUse:
          json['maxFriendpointBoostItemUse'] as int? ?? 3,
      maxFriendshipRank: json['maxFriendshipRank'] as int? ?? 5,
      maxFriendCode: json['maxFriendCode'] as int? ?? 999999999,
      maxFriendHistoryNum: json['maxFriendHistoryNum'] as int? ?? 100,
      maxFriendShipUpRatio: json['maxFriendShipUpRatio'] as int? ?? 3000,
      maxMana: json['maxMana'] as int? ?? 999999999,
      maxNearPresentOffsetNum: json['maxNearPresentOffsetNum'] as int? ?? 50,
      maxPresentBoxHistoryNum: json['maxPresentBoxHistoryNum'] as int? ?? 0,
      maxPresentBoxNum: json['maxPresentBoxNum'] as int? ?? 400,
      maxPresentReceiveNum: json['maxPresentReceiveNum'] as int? ?? 99,
      maxQp: json['maxQp'] as int? ?? 2000000000,
      maxQpDropUpRatio: json['maxQpDropUpRatio'] as int? ?? 3000,
      maxQpFactor: json['maxQpFactor'] as int? ?? 3000,
      maxRarePri: json['maxRarePri'] as int? ?? 999999999,
      maxRp: json['maxRp'] as int? ?? 8,
      maxStone: json['maxStone'] as int? ?? 999999999,
      maxUserCommandCode: json['maxUserCommandCode'] as int? ?? 350,
      maxUserEquipExpUpRatio: json['maxUserEquipExpUpRatio'] as int? ?? 3000,
      maxUserItem: json['maxUserItem'] as int? ?? 999999999,
      maxUserLv: json['maxUserLv'] as int? ?? 160,
      maxUserSvt: json['maxUserSvt'] as int? ?? 600,
      maxUserSvtEquip: json['maxUserSvtEquip'] as int? ?? 600,
      maxUserSvtEquipStorage: json['maxUserSvtEquipStorage'] as int? ?? 100,
      maxUserSvtStorage: json['maxUserSvtStorage'] as int? ?? 100,
      menuChange: json['menuChange'] as int? ?? 1,
      overKillNpRate: json['overKillNpRate'] as int? ?? 1500,
      overKillStarAdd: json['overKillStarAdd'] as int? ?? 300,
      overKillStarRate: json['overKillStarRate'] as int? ?? 1000,
      starRateMax: json['starRateMax'] as int? ?? 3000,
      statusUpAdjustAtk: json['statusUpAdjustAtk'] as int? ?? 10,
      statusUpAdjustHp: json['statusUpAdjustHp'] as int? ?? 10,
      statusUpBuff: json['statusUpBuff'] as int? ?? 3004,
      superSuccessMultExp: json['superSuccessMultExp'] as int? ?? 3000,
      superSuccessRate: json['superSuccessRate'] as int? ?? 20,
      supportDeckMax: json['supportDeckMax'] as int? ?? 10,
      swimsuitMeltSvtId: json['swimsuitMeltSvtId'] as int? ?? 304000,
      tamamocatStunBuffId: json['tamamocatStunBuffId'] as int? ?? 178,
      tamamocatTreasureDeviceId1:
          json['tamamocatTreasureDeviceId1'] as int? ?? 701601,
      tamamocatTreasureDeviceId2:
          json['tamamocatTreasureDeviceId2'] as int? ?? 701602,
      temporaryIgnoreSleepModeForTreasureDeviceSvtId1:
          json['temporaryIgnoreSleepModeForTreasureDeviceSvtId1'] as int? ??
              500100,
      temporaryIgnoreSleepModeForTreasureDeviceSvtId2:
          json['temporaryIgnoreSleepModeForTreasureDeviceSvtId2'] as int? ??
              600900,
      treasuredeviceIdMashu3: json['treasuredeviceIdMashu3'] as int? ?? 800104,
      userAct: json['userAct'] as int? ?? 20,
      userCost: json['userCost'] as int? ?? 56,
    );

const _$BuffActionEnumMap = {
  BuffAction.unknown: 'unknown',
  BuffAction.none: 'none',
  BuffAction.commandAtk: 'commandAtk',
  BuffAction.commandDef: 'commandDef',
  BuffAction.atk: 'atk',
  BuffAction.defence: 'defence',
  BuffAction.defencePierce: 'defencePierce',
  BuffAction.specialdefence: 'specialdefence',
  BuffAction.damage: 'damage',
  BuffAction.damageIndividuality: 'damageIndividuality',
  BuffAction.damageIndividualityActiveonly: 'damageIndividualityActiveonly',
  BuffAction.selfdamage: 'selfdamage',
  BuffAction.criticalDamage: 'criticalDamage',
  BuffAction.npdamage: 'npdamage',
  BuffAction.givenDamage: 'givenDamage',
  BuffAction.receiveDamage: 'receiveDamage',
  BuffAction.pierceInvincible: 'pierceInvincible',
  BuffAction.invincible: 'invincible',
  BuffAction.breakAvoidance: 'breakAvoidance',
  BuffAction.avoidance: 'avoidance',
  BuffAction.overwriteBattleclass: 'overwriteBattleclass',
  BuffAction.overwriteClassrelatioAtk: 'overwriteClassrelatioAtk',
  BuffAction.overwriteClassrelatioDef: 'overwriteClassrelatioDef',
  BuffAction.commandNpAtk: 'commandNpAtk',
  BuffAction.commandNpDef: 'commandNpDef',
  BuffAction.dropNp: 'dropNp',
  BuffAction.dropNpDamage: 'dropNpDamage',
  BuffAction.commandStarAtk: 'commandStarAtk',
  BuffAction.commandStarDef: 'commandStarDef',
  BuffAction.criticalPoint: 'criticalPoint',
  BuffAction.starweight: 'starweight',
  BuffAction.turnendNp: 'turnendNp',
  BuffAction.turnendStar: 'turnendStar',
  BuffAction.turnendHpRegain: 'turnendHpRegain',
  BuffAction.turnendHpReduce: 'turnendHpReduce',
  BuffAction.gainHp: 'gainHp',
  BuffAction.turnvalNp: 'turnvalNp',
  BuffAction.grantState: 'grantState',
  BuffAction.resistanceState: 'resistanceState',
  BuffAction.avoidState: 'avoidState',
  BuffAction.donotAct: 'donotAct',
  BuffAction.donotSkill: 'donotSkill',
  BuffAction.donotNoble: 'donotNoble',
  BuffAction.donotRecovery: 'donotRecovery',
  BuffAction.individualityAdd: 'individualityAdd',
  BuffAction.individualitySub: 'individualitySub',
  BuffAction.hate: 'hate',
  BuffAction.criticalRate: 'criticalRate',
  BuffAction.avoidInstantdeath: 'avoidInstantdeath',
  BuffAction.resistInstantdeath: 'resistInstantdeath',
  BuffAction.nonresistInstantdeath: 'nonresistInstantdeath',
  BuffAction.regainNpUsedNoble: 'regainNpUsedNoble',
  BuffAction.functionDead: 'functionDead',
  BuffAction.maxhpRate: 'maxhpRate',
  BuffAction.maxhpValue: 'maxhpValue',
  BuffAction.functionWavestart: 'functionWavestart',
  BuffAction.functionSelfturnend: 'functionSelfturnend',
  BuffAction.giveGainHp: 'giveGainHp',
  BuffAction.functionCommandattack: 'functionCommandattack',
  BuffAction.functionDeadattack: 'functionDeadattack',
  BuffAction.functionEntry: 'functionEntry',
  BuffAction.chagetd: 'chagetd',
  BuffAction.grantSubstate: 'grantSubstate',
  BuffAction.toleranceSubstate: 'toleranceSubstate',
  BuffAction.grantInstantdeath: 'grantInstantdeath',
  BuffAction.functionDamage: 'functionDamage',
  BuffAction.functionReflection: 'functionReflection',
  BuffAction.multiattack: 'multiattack',
  BuffAction.giveNp: 'giveNp',
  BuffAction.resistanceDelayNpturn: 'resistanceDelayNpturn',
  BuffAction.pierceDefence: 'pierceDefence',
  BuffAction.gutsHp: 'gutsHp',
  BuffAction.funcgainNp: 'funcgainNp',
  BuffAction.funcHpReduce: 'funcHpReduce',
  BuffAction.functionNpattack: 'functionNpattack',
  BuffAction.fixCommandcard: 'fixCommandcard',
  BuffAction.donotGainnp: 'donotGainnp',
  BuffAction.fieldIndividuality: 'fieldIndividuality',
  BuffAction.donotActCommandtype: 'donotActCommandtype',
  BuffAction.damageEventPoint: 'damageEventPoint',
  BuffAction.damageSpecial: 'damageSpecial',
  BuffAction.functionAttack: 'functionAttack',
  BuffAction.functionCommandcodeattack: 'functionCommandcodeattack',
  BuffAction.donotNobleCondMismatch: 'donotNobleCondMismatch',
  BuffAction.donotSelectCommandcard: 'donotSelectCommandcard',
  BuffAction.donotReplace: 'donotReplace',
  BuffAction.shortenUserEquipSkill: 'shortenUserEquipSkill',
  BuffAction.tdTypeChange: 'tdTypeChange',
  BuffAction.overwriteClassRelation: 'overwriteClassRelation',
  BuffAction.functionCommandattackBefore: 'functionCommandattackBefore',
  BuffAction.functionGuts: 'functionGuts',
  BuffAction.criticalRateDamageTaken: 'criticalRateDamageTaken',
  BuffAction.criticalStarDamageTaken: 'criticalStarDamageTaken',
  BuffAction.skillRankChange: 'skillRankChange',
  BuffAction.avoidanceIndividuality: 'avoidanceIndividuality',
  BuffAction.changeCommandCardType: 'changeCommandCardType',
  BuffAction.specialInvincible: 'specialInvincible',
  BuffAction.preventDeathByDamage: 'preventDeathByDamage',
  BuffAction.functionCommandcodeattackAfter: 'functionCommandcodeattackAfter',
  BuffAction.functionAttackBefore: 'functionAttackBefore',
  BuffAction.donotSkillSelect: 'donotSkillSelect',
  BuffAction.invisibleBattleChara: 'invisibleBattleChara',
  BuffAction.buffRate: 'buffRate',
  BuffAction.counterFunction: 'counterFunction',
  BuffAction.notTargetSkill: 'notTargetSkill',
  BuffAction.toFieldChangeField: 'toFieldChangeField',
  BuffAction.toFieldAvoidBuff: 'toFieldAvoidBuff',
  BuffAction.grantStateUpOnly: 'grantStateUpOnly',
  BuffAction.turnendHpReduceToRegain: 'turnendHpReduceToRegain',
  BuffAction.functionSelfturnstart: 'functionSelfturnstart',
  BuffAction.overwriteDeadType: 'overwriteDeadType',
};
