import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_id.freezed.dart';

@freezed
class ListId with _$ListId {
  factory ListId(int value) = _ListId;
}
