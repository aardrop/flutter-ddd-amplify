part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.confirmationCodeChanged(
      String confirmationCodeStr) = ConfirmationCodeChanged;
  const factory SignInFormEvent.requestedNewConfirmationCode() =
      RequestedNewConfirmationCode;
  const factory SignInFormEvent.signUpSwitched() = SignUpSwitched;
  const factory SignInFormEvent.confirmationSwitched() = ConfirmationSwitched;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory SignInFormEvent.submitConfirmationCode() =
      SubmitConfirmationCode;
}
