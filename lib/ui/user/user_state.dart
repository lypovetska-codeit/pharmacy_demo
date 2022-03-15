import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState.loaded(User user) = LoadedUserState;

  factory UserState.loading() = LoadingUserState;
}
