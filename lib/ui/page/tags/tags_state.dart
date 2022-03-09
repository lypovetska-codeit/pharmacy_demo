import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/tag.dart';

part 'tags_state.freezed.dart';

@freezed
class TagsState with _$TagsState {
  factory TagsState.loading() = Loading;

  factory TagsState.loaded(List<Tag> items) = Loaded;

  factory TagsState.error(Object e) = Error;
}
