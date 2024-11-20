import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/widgets/custom_text_filed.dart';

class InformationCreateAccount extends StatefulWidget {
  const InformationCreateAccount({super.key});

  @override
  State<InformationCreateAccount> createState() =>
      _InformationCreateAccountState();
}

class _InformationCreateAccountState extends State<InformationCreateAccount> {
  bool _isChecked = false;
  bool isPasswordVisible1 = false;
  bool isPasswordVisible2 = false;
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
          obscureText: false,
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
          obscureText: isPasswordVisible1,
          hintText: 'ادخل كلمة المرور',
          prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible1 = !isPasswordVisible1;
                });
              },
              icon: isPasswordVisible1
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off_rounded)),
        ),
        Container(
            margin: EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: Text(
              'تأكيد كلمة المرور ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )),
        CustomTextFiled(
          inputType: TextInputType.visiblePassword,
          obscureText: isPasswordVisible2,
          hintText: 'ادخل كلمة المرور',
          prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible2 = !isPasswordVisible2;
                });
              },
              icon: isPasswordVisible2
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off_rounded)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                text: 'أوافق على ',
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                    text: 'شروط خدمة ',
                    style: TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' المنصة',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'و سياسة الخصوصية',
                    style: TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
            ),
            SizedBox(height: 24),
          ],
        )
      ],
    );
  }
}
