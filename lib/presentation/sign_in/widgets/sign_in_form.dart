import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/auth_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_ddd_amplify/domain/auth/auth_stage.dart';

class SignInForm extends StatelessWidget {
  final _signInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String authFailureOrSuccessMessage = '';
    print('sign in form built: $_signInFormKey');
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
      },
      builder: (context, state) {
        return Form(
          key: _signInFormKey,
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                'Sign In Form',
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
                key: const Key('signUpEmailFormField'),
                enabled: true,
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
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent
                      .signInWithEmailAndPasswordPressed());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.signUpSwitched());
                },
                child: const Text(
                  'New to Outway? Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
