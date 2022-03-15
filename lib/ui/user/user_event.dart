import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/user.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  factory UserEvent.authorize() = AuthorizeEvent;

  factory UserEvent.logout() = LogoutEvent;

  factory UserEvent.onUserChange(User user) = OnUserChangeEvent;
}
