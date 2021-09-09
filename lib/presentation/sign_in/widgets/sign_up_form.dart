import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/auth_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignUpForm extends StatelessWidget {
  final _signUpFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print('sign up form built: $_signUpFormKey');
    String authFailureOrSuccessMessage = '';

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
          key: _signUpFormKey,
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                'Sign Up Form',
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
                  validator: (_) {
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
                  }),
              const SizedBox(height: 8),
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
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent
                      .registerWithEmailAndPasswordPressed());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: const Text(
                  "SIGN UP",
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
                  'Already have an existing account? Sign In',
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
