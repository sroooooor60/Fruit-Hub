import 'package:flutter/material.dart';
import 'package:frute_hub/features/on_bording/presentaion/views/widgets/on_bording_view_body.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});
  static const String routeName = 'onBording';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnBordingViewBody()));
  }
}
