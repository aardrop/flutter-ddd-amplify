import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_ddd_amplify/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const factory User({
    required UniqueId id,
  }) = _User;

  factory User.forUUIDString(String input) {
    return User(id: UniqueId.fromUniqueString(input));
  }
}
