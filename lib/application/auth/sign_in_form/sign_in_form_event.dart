part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  //variables changed
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.confirmationCodeChanged(
      String confirmationCodeStr) = ConfirmationCodeChanged;
  //Manual auth stage switches
  const factory SignInFormEvent.signUpSwitched() = SignUpSwitched;
  const factory SignInFormEvent.confirmationSwitched() = ConfirmationSwitched;
  const factory SignInFormEvent.resetPasswordSwitched() = ResetPasswordSwitched;
  //Amplify Action Requests
  const factory SignInFormEvent.requestedNewConfirmationCodePressed() =
      RequestedNewConfirmationCode;
  const factory SignInFormEvent.requestedResetPasswordPressed() =
      RequestedResetPassword;
  //Submit Events
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory SignInFormEvent.confirmCodePressed() = ConfirmCodePressed;
  const factory SignInFormEvent.reserPasswordPressed() = ReserPasswordPressed;
}
