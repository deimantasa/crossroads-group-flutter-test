import 'package:json_annotation/json_annotation.dart';
import 'author.dart';

part 'commit.g.dart';

@JsonSerializable()
class Commit {
  Author author;
  String message;

  Commit(this.author, this.message);

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);

  Map<String, dynamic> toJson() => _$CommitToJson(this);
}
