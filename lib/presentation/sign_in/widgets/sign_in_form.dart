import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/auth_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_ddd_amplify/domain/auth/auth_stage.dart';

class SignInForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String authFailureOrSuccessMessage = '';

    SignInFormEvent submitForm =
        const SignInFormEvent.signInWithEmailAndPasswordPressed();
    String submitButtonText = 'SIGN IN';
    String switchButtonText = 'New to Outway? Sign Up';
    SignInFormEvent switchButtonFunction =
        const SignInFormEvent.signUpSwitched();

    void setSignInForm(AuthStage authStage) {
      //TODO: Find more sustainable and efficient manner of switching stages
      switch (authStage) {
        case AuthStage.signUp:
          submitButtonText = 'SIGN UP';
          submitForm =
              const SignInFormEvent.registerWithEmailAndPasswordPressed();
          switchButtonText = 'Have an existing account? Sign In';
          switchButtonFunction = const SignInFormEvent.signUpSwitched();
          break;
        case AuthStage.signIn:
          submitButtonText = 'SIGN IN';
          submitForm =
              const SignInFormEvent.signInWithEmailAndPasswordPressed();
          switchButtonText = 'New to Outway? Sign Up';
          switchButtonFunction = const SignInFormEvent.signUpSwitched();
          break;
        case AuthStage.confirmation:
          submitButtonText = 'CONFIRM';
          submitForm = const SignInFormEvent.confirmCodePressed();
          switchButtonText = 'Resend Confirmation Code Email?';
          switchButtonFunction =
              const SignInFormEvent.requestedNewConfirmationCodePressed();
          break;
        case AuthStage.requestedResetPassword:
          submitButtonText = 'Request Reset';
          submitForm = const SignInFormEvent.requestedResetPasswordPressed();
          switchButtonText = 'Return to Login';
          switchButtonFunction = const SignInFormEvent.signUpSwitched();
          break;
        case AuthStage.resetPassword:
          submitButtonText = 'Reset Password';
          submitForm = const SignInFormEvent.reserPasswordPressed();
          switchButtonText = 'Return to Login';
          switchButtonFunction = const SignInFormEvent.signUpSwitched();
          break;
      }
    }

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {
            authFailureOrSuccessMessage = '';
          },
          (either) => either.fold(
            (failure) {
              authFailureOrSuccessMessage = failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                  expiredConfirmationCode: (_) => 'Expired confirmation code',
                  invalidConfirmationCode: (_) => 'Incorrect confirmation code',
                  unconfirmedUser: (_) => 'Account Confirmation Required');
            },
            (_) {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
        setSignInForm(state.authStage);
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                'Flutter Amplify Auth',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: authFailureOrSuccessMessage.isNotEmpty,
                child: Center(
                  child: Text(
                    authFailureOrSuccessMessage,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                enabled: state.authStage != AuthStage.confirmation &&
                    state.authStage != AuthStage.resetPassword,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              if (state.authStage == AuthStage.signUp ||
                  state.authStage == AuthStage.signIn ||
                  state.authStage == AuthStage.resetPassword)
                TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      labelText: state.authStage == AuthStage.resetPassword
                          ? 'New Password'
                          : 'Password',
                    ),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) {
                      if (state.authStage == AuthStage.signUp ||
                          state.authStage == AuthStage.resetPassword) {
                        return context
                            .read<SignInFormBloc>()
                            .state
                            .password
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                shortPassword: (_) =>
                                    'Password must be at least 8 characters',
                                invalidPassword: (_) {
                                  return '''
                                Password must contain:
                                    - a capital letter
                                    - a lowercase letter
                                    - a number
                                    - a special character
                                    ''';
                                },
                                orElse: () => null,
                              ),
                              (_) => null,
                            );
                      }
                    }),
              const SizedBox(height: 8),
              if (state.authStage == AuthStage.signUp ||
                  state.authStage == AuthStage.resetPassword)
                TextFormField(
                  key: const Key('confirmPassworkFormField'),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Confirm Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (_) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    return null;
                  },
                ),
              const SizedBox(height: 8),
              if (state.authStage == AuthStage.confirmation ||
                  state.authStage == AuthStage.resetPassword)
                TextFormField(
                  key: const Key('confirmationCodeFormField'),
                  initialValue: '',
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Confirmation Code',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.confirmationCodeChanged(value)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email confirmation code';
                    }
                    context
                        .read<SignInFormBloc>()
                        .state
                        .confirmationCode
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            exceedingLength: (_) => 'Invalid Confirmation Code',
                            incompleteConfirmationCode: (_) =>
                                'Invalid Confirmation Code',
                            orElse: () => null,
                          ),
                          (_) => null,
                        );
                    return null;
                  },
                ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(submitForm);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: Text(
                  submitButtonText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(switchButtonFunction);
                },
                child: Text(
                  switchButtonText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (state.authStage == AuthStage.signIn) ...[
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<SignInFormBloc>()
                        .add(const SignInFormEvent.resetPasswordSwitched());
                  },
                  child: const Text(
                    'Forgot Password? No Problem, reset it!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(),
              ]
            ],
          ),
        );
      },
    );
  }
}
