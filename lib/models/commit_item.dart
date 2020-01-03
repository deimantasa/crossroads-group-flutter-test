import 'package:json_annotation/json_annotation.dart';

import 'commit.dart';
part 'commit_item.g.dart';

@JsonSerializable()
class CommitItem{
	Commit commit;

	CommitItem(this.commit);

	factory CommitItem.fromJson(Map<String, dynamic> json) => _$CommitItemFromJson(json);
	Map<String, dynamic> toJson() => _$CommitItemToJson(this);
}