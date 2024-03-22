import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_code_refrence/core/di/dependency_injection.dart';
import 'package:ultimate_code_refrence/core/routing/routes.dart';
import 'package:ultimate_code_refrence/features/login/logic/cubit/login_cubit.dart';
import 'package:ultimate_code_refrence/features/login/ui/login_screen.dart';
import 'package:ultimate_code_refrence/features/on_boarding/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    //this is for commit test
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
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
