import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_event.freezed.dart';

@freezed
class TagsEvent with _$TagsEvent {
  factory TagsEvent() = _TagsEvent;
}
