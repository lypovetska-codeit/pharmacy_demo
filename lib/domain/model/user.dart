import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/domain/model/user_id.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User.authorized({
    required final UserId userId,
    required final String firstName,
    required final String lastName,
    required final String phoneNumber,
  }) = AuthorizedUser;

  factory User.guest() = GuestUser;
}
