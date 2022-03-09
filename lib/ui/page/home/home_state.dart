import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loading() = LoadingState;

  factory HomeState.loaded() = LoadedState;

  factory HomeState.error(Object error) = ErrorState;
}
