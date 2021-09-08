import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_amplify/application/auth/auth_bloc.dart';
import 'package:flutter_ddd_amplify/presentation/routes/router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signedOut());
            AutoRouter.of(context).replace(const SignInPageRoute());
          },
          child: const Text(
            'Sign Out',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
