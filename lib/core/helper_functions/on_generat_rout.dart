import 'package:flutter/material.dart';
import 'package:frute_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    // Add more routes here as needed
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
