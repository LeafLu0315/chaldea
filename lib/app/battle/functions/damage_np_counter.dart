import 'package:chaldea/app/battle/models/battle.dart';
import 'package:chaldea/app/battle/utils/battle_utils.dart';
import 'package:chaldea/generated/l10n.dart';
import 'package:chaldea/models/gamedata/gamedata.dart';

class DamageNpCounter {
  DamageNpCounter._();

  static void damageNpCounter(
    final BattleData battleData,
    final DataVals dataVals,
    final BattleServantData? activator,
    final Iterable<BattleServantData> targets,
  ) {
    if (activator == null) {
      // cannot find accumulation damage
      return;
    }

    final functionRate = dataVals.Rate ?? 1000;
    if (functionRate < battleData.options.threshold) {
      return;
    }

    final damage = (activator.accumulationDamage * toModifier(dataVals.Value!)).toInt();

    for (final target in targets) {
      battleData.withTargetSync(target, () {
        target.receiveDamage(damage);
        target.actionHistory.add(BattleServantActionHistory(
          actType: BattleServantActionHistoryType.damageCommand,
          targetUniqueId: activator.uniqueId,
          isOpponent: activator.isPlayer != target.isPlayer,
        ));

        battleData.battleLogger.action('${activator.lBattleName} - '
            '${Transl.buffType(BuffType.reflectionFunction).l}: $damage -'
            '${S.current.effect_target}: ${target.lBattleName}');
        battleData.setFuncResult(target.uniqueId, true);
      });
    }
  }
}
