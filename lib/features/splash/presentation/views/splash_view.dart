import 'package:flutter/material.dart';
import 'package:hidaya/features/splash/presentation/views/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashBody(),
    );
  }
}
