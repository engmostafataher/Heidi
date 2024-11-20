import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/widgets/custom_text_filed.dart';
import 'package:hidaya/features/auth/presentation/views/forgot_password.dart';

class InformationLogin extends StatefulWidget {
  const InformationLogin({super.key});

  @override
  State<InformationLogin> createState() => _InformationLoginState();
}

class _InformationLoginState extends State<InformationLogin> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: const Text(
              'البريد الإلكتروني',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )),
        const CustomTextFiled(
          inputType: TextInputType.emailAddress,
          hintText: 'ادخل بريدك الإلكتروني',
          obscureText: false,
        ),
        Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: const Text(
              'كلمة المرور',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )),
        CustomTextFiled(
          inputType: TextInputType.visiblePassword,
          obscureText: isObscure,
          hintText: 'ادخل كلمة المرور',
          prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon:isObscure?const Icon(Icons.visibility): const Icon(Icons.visibility_off_rounded)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ForgotPassword()));
              },
              child: const Text('نسيت كلمة المرور؟')),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
