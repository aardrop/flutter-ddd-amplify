import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_ddd_amplify/amplifyconfiguration.dart';
import 'package:flutter_ddd_amplify/injection.dart';
import 'package:flutter_ddd_amplify/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Amplify.addPlugins([
    AmplifyAuthCognito(),
  ]);
  try {
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    // ignore: avoid_print
    print(
        "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
  }
  runApp(AppWidget());
}
