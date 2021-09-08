import 'package:auto_route/annotations.dart';
import 'package:flutter_ddd_amplify/presentation/main/main_page.dart';

import 'package:flutter_ddd_amplify/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_ddd_amplify/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: MainPage),
  ],
)
class $Router {}
