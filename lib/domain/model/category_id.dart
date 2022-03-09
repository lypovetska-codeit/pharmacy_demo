import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_id.freezed.dart';

@freezed
class CategoryId with _$CategoryId {
  factory CategoryId(int value) = _CategoryId;
}
