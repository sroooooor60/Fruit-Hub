import 'package:flutter/material.dart';
import 'package:frute_hub/features/auth/presentation/views/login_view.dart';
import 'package:frute_hub/features/on_bording/presentaion/views/on_bording_view.dart';
import 'package:frute_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (constant) => const SplashView());
    // Add more routes here as needed
    case OnBordingView.routeName:
      return MaterialPageRoute(builder: (constant) => const OnBordingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (constant) => const LoginView());
    default:
      return MaterialPageRoute(builder: (constant) => const Scaffold());
  }
}
