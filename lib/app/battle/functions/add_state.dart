import 'package:chaldea/app/battle/models/battle.dart';
import 'package:chaldea/app/battle/models/buff.dart';
import 'package:chaldea/app/battle/models/svt_entity.dart';
import 'package:chaldea/app/battle/utils/battle_utils.dart';
import 'package:chaldea/app/battle/utils/buff_utils.dart';
import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/db.dart';
import 'package:chaldea/models/gamedata/gamedata.dart';
import 'package:chaldea/utils/utils.dart';

class AddState {
  AddState._();

  static Future<bool> addState(
    final BattleData battleData,
    final Buff buff,
    final DataVals dataVals,
    final List<BattleServantData> targets, {
    final List<NiceTd>? tdSelections,
    final bool isPassive = false,
    final bool notActorPassive = false,
    final bool isCommandCode = false,
    final bool isShortBuff = false,
  }) async {
    final activator = battleData.activator;
    bool buffAdded = false;
    for (int i = 0; i < targets.length; i += 1) {
      final target = targets[i];
      final buffData = BuffData(buff, dataVals)
        ..actorUniqueId = activator?.uniqueId ?? 0
        ..actorName = activator?.lBattleName ?? ''
        ..notActorPassive = notActorPassive
        ..isShortBuff = isShortBuff
        ..irremovable |= isPassive || notActorPassive;

      if (buff.type == BuffType.tdTypeChange) {
        buffData.tdSelection = tdSelections![i];
      }

      battleData.setCurrentBuff(buffData);
      final convertBuff = target.getFirstBuffOnActions(battleData, [BuffAction.buffConvert]);
      if (convertBuff != null) {
        buffData.buff = convertBuff.buff.script!.convert!.convertBuffs.first;
      }

      battleData.setTarget(target);
      if (await shouldAddState(battleData, dataVals, activator, target) &&
          target.isBuffStackable(buffData.buff.buffGroup) &&
          checkSameBuffLimitNum(target, dataVals)) {
        target.addBuff(
          buffData,
          isPassive: isPassive || notActorPassive,
          isCommandCode: isCommandCode,
        );
        buffAdded = true;

        if (buff.type == BuffType.addMaxhp) {
          target.heal(battleData, dataVals.Value!);
        } else if (buff.type == BuffType.subMaxhp) {
          target.lossHp(dataVals.Value!);
        } else if (buff.type == BuffType.upMaxhp) {
          target.heal(battleData, toModifier(target.maxHp * dataVals.Value!).toInt());
        } else if (buff.type == BuffType.downMaxhp) {
          target.lossHp(toModifier(target.maxHp * dataVals.Value!).toInt());
        }
      }
      battleData.unsetTarget();
      battleData.unsetCurrentBuff();
    }

    return buffAdded;
  }

  static bool checkSameBuffLimitNum(
    final BattleServantData target,
    final DataVals dataVals,
  ) {
    return dataVals.SameBuffLimitNum == null ||
        dataVals.SameBuffLimitNum! >
            target.countBuffWithTrait([NiceTrait(id: dataVals.SameBuffLimitTargetIndividuality!)]);
  }

  static Future<bool> shouldAddState(
    final BattleData battleData,
    final DataVals dataVals,
    final BattleServantData? activator,
    final BattleServantData target,
  ) async {
    if (dataVals.ForceAddState == 1) {
      return true;
    }

    int functionRate = dataVals.Rate ?? 1000;
    if ((functionRate < 0 || dataVals.TriggeredFuncPosition != null) && !battleData.previousFunctionResult) {
      return false;
    }

    functionRate = functionRate.abs();

    if (await target.hasBuffOnAction(battleData, BuffAction.avoidState)) {
      battleData.logger.debug('${S.current.effect_target}: ${target.lBattleName} - ${S.current.battle_invalid}');
      return false;
    }

    final buffReceiveChance = await target.getBuffValueOnAction(battleData, BuffAction.resistanceState);
    final buffChanceDetails = ConstData.buffActions[BuffAction.grantState]!;
    final buffChance = await activator?.getBuffValueOnAction(battleData, BuffAction.grantState) ??
        capBuffValue(buffChanceDetails, 0, Maths.min(buffChanceDetails.maxRate));

    final activationRate = functionRate + buffChance;
    final resistRate = buffReceiveChance;

    final success = await battleData.canActivateFunction(activationRate - resistRate);

    final resultsString = success
        ? S.current.success
        : resistRate > 0
            ? 'GUARD'
            : 'MISS';

    battleData.logger.debug('${S.current.effect_target}: ${target.lBattleName} - '
        '$resultsString'
        '${battleData.tailoredExecution ? '' : ' [($activationRate - $resistRate) vs ${battleData.probabilityThreshold}]'}');

    return success;
  }
}
