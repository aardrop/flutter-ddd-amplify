import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ddd_amplify/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_ddd_amplify/domain/auth/auth_stage.dart';
import 'package:flutter_ddd_amplify/injection.dart';
import 'package:flutter_ddd_amplify/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter_ddd_amplify/presentation/sign_in/widgets/sign_up_form.dart';

class SignInBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget authStageForm = SignInForm();
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        switch (state.authStage) {
          case AuthStage.signUp:
            authStageForm = SignUpForm();
            break;
          case AuthStage.signIn:
            authStageForm = SignInForm();
            break;
          case AuthStage.confirmation:
            authStageForm = SignInForm();
            break;
          case AuthStage.requestedResetPassword:
            authStageForm = SignInForm();
            break;
          case AuthStage.resetPassword:
            authStageForm = SignInForm();
            break;
        }
      },
      builder: (context, state) {
        return authStageForm;
      },
    );
  }
}
