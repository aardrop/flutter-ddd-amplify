import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_ddd_amplify/domain/auth/auth_stage.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_amplify/domain/auth/auth_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ddd_amplify/domain/auth/value_objects.dart';
import 'package:flutter_ddd_amplify/domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        password: Password(e.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, confirmationCodeChanged: (e) async* {
      yield state.copyWith(
        confirmationCode: ConfirmationCode(e.confirmationCodeStr),
        authFailureOrSuccessOption: none(),
      );
    }, signUpSwitched: (e) async* {
      final AuthStage switchToAuthStage = state.authStage == AuthStage.signUp
          ? AuthStage.signIn
          : AuthStage.signUp;

      yield state.copyWith(
        authStage: switchToAuthStage,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
    }, confirmationSwitched: (e) async* {
      yield state.copyWith(
        authStage: AuthStage.confirmation,
      );
    }, registerWithEmailAndPasswordPressed: (e) async* {
      log('register new user required');
      Either<AuthFailure, Unit> failureOrSuccess =
          const Right<AuthFailure, Unit>(unit);

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
        );
      } else {
        //catch invalid Email/Password requests without calling infrastructure layer
        failureOrSuccess =
            const Left(AuthFailure.invalidEmailAndPasswordCombination());
      }
      //Auth failureOrSuccess is augmented here to prevent rerouting.
      //Should the forms for each SignInForm be seperated the handling of this can be ignored
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authStage: AuthStage.confirmation,
        authFailureOrSuccessOption: failureOrSuccess.fold(
            (f) => optionOf(failureOrSuccess), (a) => none()),
      );
    }, signInWithEmailAndPasswordPressed: (e) async* {
      log('sign in new user');
      // yield* _performActionOnAuthFacadeWithEmailAndPassword(
      //   _authFacade.signInWithEmailAndPassword,
      // );
      Either<AuthFailure, Unit> failureOrSuccess =
          const Right<AuthFailure, Unit>(unit);

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
        );
      } else {
        //catch invalid Email/Password requests without calling infrastructure layer
        failureOrSuccess =
            const Left(AuthFailure.invalidEmailAndPasswordCombination());
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, signInWithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    }, submitConfirmationCode: (e) async* {
      Either<AuthFailure, Unit> failureOrSuccess =
          const Right<AuthFailure, Unit>(unit);

      final isEmailValid = state.emailAddress.isValid();
      final isConfirmationCodeValid = state.confirmationCode.isValid();
      final isPasswordValid = state.password.isValid();
      if (isEmailValid && isConfirmationCodeValid && isPasswordValid) {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        failureOrSuccess = await _authFacade.confirmSignedInUser(
          emailAddress: state.emailAddress,
          confirmationCode: state.confirmationCode,
          password: state.password,
        );
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, requestedNewConfirmationCode: (e) async* {
      Either<AuthFailure, Unit> failureOrSuccess =
          const Right<AuthFailure, Unit>(unit);

      final isEmailValid = state.emailAddress.isValid();
      if (isEmailValid) {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authFacade.resendConfirmationCode(
            emailAddress: state.emailAddress);
        //TODO: create Future.wait function that has a forced minimum time elapsed to show users a sense of change when backend actions are too fast
        Future.delayed(const Duration(seconds: 1));
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
