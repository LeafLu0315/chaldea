import 'package:chaldea/app/battle/models/battle.dart';
import 'package:chaldea/models/gamedata/gamedata.dart';

class GainNP {
  GainNP._();

  static void gainNP(
    final BattleData battleData,
    final DataVals dataVals,
    final Iterable<BattleServantData> targets, {
    final List<NiceTrait>? targetTraits,
    final bool checkBuff = false,
    final bool isNegative = false,
  }) {
    final functionRate = dataVals.Rate ?? 1000;
    if (functionRate < battleData.options.probabilityThreshold) {
      return;
    }

    targets.forEach((target) {
      battleData.setTarget(target);

      int change = isNegative ? -dataVals.Value! : dataVals.Value!;
      if (targetTraits != null) {
        final count = checkBuff ? target.countBuffWithTrait(targetTraits) : target.countTrait(battleData, targetTraits);
        change *= count;
      }

      target.changeNP(change);
      battleData.curFuncResults[target.uniqueId] = true;

      battleData.unsetTarget();
    });
  }
}
