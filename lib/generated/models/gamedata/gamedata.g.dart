// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../models/gamedata/gamedata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameData _$GameDataFromJson(Map json) => GameData(
      version: json['version'] == null
          ? null
          : DataVersion.fromJson(
              Map<String, dynamic>.from(json['version'] as Map)),
      servants: (json['servants'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            Servant.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      craftEssences: (json['craftEssences'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            CraftEssence.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      commandCodes: (json['commandCodes'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            CommandCode.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      mysticCodes: (json['mysticCodes'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            MysticCode.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      events: (json['events'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            Event.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      wars: (json['wars'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            NiceWar.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      items: (json['items'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            Item.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      questPhases: (json['questPhases'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            QuestPhase.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      exchangeTickets: (json['exchangeTickets'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            ExchangeTicket.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      entities: (json['entities'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            BasicServant.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      bgms: (json['bgms'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            Bgm.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      fixedDrops: (json['fixedDrops'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            FixedDrop.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      wiki: json['wiki'] == null
          ? null
          : WikiData.fromJson(Map<String, dynamic>.from(json['wiki'] as Map)),
      mappingData: json['mappingData'] == null
          ? null
          : MappingData.fromJson(
              Map<String, dynamic>.from(json['mappingData'] as Map)),
      constData: json['constData'] == null
          ? null
          : ConstGameData.fromJson(
              Map<String, dynamic>.from(json['constData'] as Map)),
      dropRate: json['dropRate'] == null
          ? null
          : DropRateData.fromJson(
              Map<String, dynamic>.from(json['dropRate'] as Map)),
      baseTds: (json['baseTds'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            BaseTd.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      baseSkills: (json['baseSkills'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            BaseSkill.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      baseFunctions: (json['baseFunctions'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            BaseFunction.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

DataVersion _$DataVersionFromJson(Map json) => DataVersion(
      timestamp: json['timestamp'] as int? ?? 0,
      utc: json['utc'] as String? ?? "",
      minimalApp: json['minimalApp'] as String? ?? '1.0.0',
      files: (json['files'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                FileVersion.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
    );

Map<String, dynamic> _$DataVersionToJson(DataVersion instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'utc': instance.utc,
      'minimalApp': instance.minimalApp,
      'files': instance.files.map((k, e) => MapEntry(k, e.toJson())),
    };

FileVersion _$FileVersionFromJson(Map json) => FileVersion(
      key: json['key'] as String,
      filename: json['filename'] as String,
      size: json['size'] as int,
      timestamp: json['timestamp'] as int,
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$FileVersionToJson(FileVersion instance) =>
    <String, dynamic>{
      'key': instance.key,
      'filename': instance.filename,
      'size': instance.size,
      'timestamp': instance.timestamp,
      'hash': instance.hash,
    };
