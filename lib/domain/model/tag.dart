import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/category_id.dart';

part 'tag.freezed.dart';

@freezed
class Tag with _$Tag {
  factory Tag({
    required final int id,
    required final String title,
    required final String imageUrl,
    required final CategoryId categoryId,
  }) = _Tag;
}
