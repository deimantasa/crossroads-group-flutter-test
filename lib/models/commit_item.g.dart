// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitItem _$CommitItemFromJson(Map<String, dynamic> json) {
  return CommitItem(
    json['commit'] == null
        ? null
        : Commit.fromJson(json['commit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommitItemToJson(CommitItem instance) =>
    <String, dynamic>{
      'commit': instance.commit,
    };
