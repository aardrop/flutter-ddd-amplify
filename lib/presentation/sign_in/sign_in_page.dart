import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/auth_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_ddd_amplify/injection.dart';
import 'package:flutter_ddd_amplify/presentation/routes/router.gr.dart';
import 'package:flutter_ddd_amplify/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              AutoRouter.of(context).replace(const MainPageRoute()),
          unauthenticated: (_) {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
        ),
        body: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: SignInForm(),
        ),
      ),
    );
  }
}
