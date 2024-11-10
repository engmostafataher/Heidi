import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/widgets/custom_text_filed.dart';
import 'package:hidaya/features/auth/presentation/views/forgot_password.dart';

class InformationLogin extends StatelessWidget {
  const InformationLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: Text(
              'البريد الإلكتروني',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )),
        CustomTextFiled(
          inputType: TextInputType.emailAddress,
          hintText: 'ادخل بريدك الإلكتروني',
          obscureText: true,
        ),
        Container(
            margin: EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: Text(
              'كلمة المرور',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )),
        CustomTextFiled(
          inputType: TextInputType.visiblePassword,
          obscureText: true,
          hintText: 'ادخل كلمة المرور',
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()));
              },
              child: Text('نسيت كلمة المرور؟')),
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }
}
