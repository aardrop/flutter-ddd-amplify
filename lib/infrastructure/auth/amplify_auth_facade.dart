import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_ddd_amplify/domain/auth/auth_failure.dart';
import 'package:flutter_ddd_amplify/domain/auth/i_auth_facade.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_ddd_amplify/domain/auth/user.dart';
import 'package:flutter_ddd_amplify/domain/auth/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class AmplifyAuthFacade implements IAuthFacade {
  AmplifyAuthFacade();

  Future<Option<User>> getSignedSubUser() async {
    final attributes = await Amplify.Auth.fetchUserAttributes();
    final userId =
        attributes.firstWhere((e) => e.userAttributeKey == 'sub').value;

    return optionOf(User.forUUIDString(userId.toString()));
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    final AuthSession session = await Amplify.Auth.fetchAuthSession();
    if (session.isSignedIn) {
      return getSignedSubUser();
    } else {
      return none();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await signOut();
      await Amplify.Auth.signIn(
        username: emailAddressStr,
        password: passwordStr,
      );

      return right(unit);
    } on AuthException catch (e) {
      if (e is UserNotConfirmedException) {
        return left(const AuthFailure.unconfirmedUser());
      }
      if (e is UsernameExistsException ||
          e is UserNotFoundException ||
          e is NotAuthorizedException) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e is UserNotFoundException) {
        return left(const AuthFailure.unconfirmedUser());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await signOut();
      await Amplify.Auth.signUp(
        username: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on AuthException catch (e) {
      if (e is UserNotConfirmedException) {
        return left(const AuthFailure.unconfirmedUser());
      }
      if (e is UsernameExistsException || e is UserNotFoundException) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e is UserNotFoundException) {
        return left(const AuthFailure.unconfirmedUser());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmSignedInUser({
    required EmailAddress emailAddress,
    required ConfirmationCode confirmationCode,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final codeStr = confirmationCode.getOrCrash();
    try {
      final confirmResult = await Amplify.Auth.confirmSignUp(
        username: emailAddressStr,
        confirmationCode: codeStr,
      );
      if (confirmResult.isSignUpComplete) {
        return await signInWithEmailAndPassword(
          emailAddress: emailAddress,
          password: password,
        );
      } else {
        throw AuthException;
      }
    } on AuthException catch (e) {
      if (e is CodeMismatchException) {
        return left(const AuthFailure.invalidConfirmationCode());
      } else if (e is CodeExpiredException) {
        return left(const AuthFailure.expiredConfirmationCode());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
    required ConfirmationCode confirmationCode,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final codeStr = confirmationCode.getOrCrash();
    try {
      await Amplify.Auth.confirmPassword(
        username: emailAddressStr,
        newPassword: passwordStr,
        confirmationCode: codeStr,
      );
      return right(unit);
    } on AuthException catch (e) {
      if (e is CodeMismatchException) {
        return left(const AuthFailure.invalidConfirmationCode());
      } else if (e is CodeExpiredException) {
        return left(const AuthFailure.expiredConfirmationCode());
      } else if (e is InvalidPasswordException || e is UserNotFoundException) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resendConfirmationCode({
    required EmailAddress emailAddress,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    try {
      await Amplify.Auth.resendSignUpCode(username: emailAddressStr);
      return right(unit);
    } on AuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> requestResetPassword({
    required EmailAddress emailAddress,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    try {
      await Amplify.Auth.resetPassword(username: emailAddressStr);
      return right(unit);
    } on AuthException catch (e) {
      if (e is InvalidParameterException) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await Amplify.Auth.signOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}
