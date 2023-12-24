import 'package:flutter/material.dart';
import 'package:ultimate_code_refrence/core/di/dependency_injection.dart';
import 'package:ultimate_code_refrence/core/routing/app_router.dart';
import 'package:ultimate_code_refrence/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
