part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required ConfirmationCode confirmationCode,
    required bool showErrorMessages,
    required bool isSubmitting,
    required AuthStage authStage,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmationCode: ConfirmationCode(''),
        showErrorMessages: false,
        isSubmitting: false,
        authStage: AuthStage.signIn,
        authFailureOrSuccessOption: none(),
      );
}
