import 'package:flutter/material.dart';
import 'package:hidaya/features/auth/presentation/views/widgets/verification_code_body.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerificationCodeBody(),
    );
  }
}
