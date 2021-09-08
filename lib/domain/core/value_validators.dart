import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:flutter_ddd_amplify/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  final passwordRegExp = RegExp(passwordRegex);
  if (input.length >= 8) {
    if (passwordRegExp.hasMatch(input)) {
      return right(input);
    } else {
      // print(RegExp(passwordRegex).stringMatch(input));
      return left(ValueFailure.invalidPassword(failedValue: input));
    }
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateConfirmationCode(String input) {
  if (input.length == 6) {
    return right(input);
  } else if (input.length >= 6) {
    return left(ValueFailure.exceedingLength(failedValue: input, max: 6));
  } else {
    return left(ValueFailure.incompleteConfirmationCode(failedValue: input));
  }
}
