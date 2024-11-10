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
            margin: EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: Text(
              'تأكيد كلمة المرور ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )),
        CustomTextFiled(
          inputType: TextInputType.visiblePassword,
          obscureText: true,
          hintText: 'ادخل كلمة المرور',
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
