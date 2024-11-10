import 'package:flutter/material.dart';
import 'package:hidaya/features/auth/presentation/views/widgets/forgot_password_body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordBody(),
    );
  }
}
