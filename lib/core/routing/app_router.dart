import 'package:flutter/material.dart';
import 'package:ultimate_code_refrence/core/routing/routes.dart';
import 'package:ultimate_code_refrence/features/login/ui/login_screen.dart';
import 'package:ultimate_code_refrence/features/on_boarding/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No Route Specified'),
                  ),
                ));
    }
  }
}
