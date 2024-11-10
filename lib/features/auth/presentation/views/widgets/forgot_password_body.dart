import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/widgets/custom_button.dart';
import 'package:hidaya/core/utils/widgets/custom_text_filed.dart';
import 'package:hidaya/features/auth/presentation/views/verification_code.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});
  double width(context) => MediaQuery.of(context).size.width;
  double height(context) => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height(context) * .05),
          Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: Colors.black))),
          SizedBox(height: height(context) * .04),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              'نسيت كلمة المرور؟',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFA86B33),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              'أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك،'
              ' وسنرسل لك رمز التأكيد',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ),
          SizedBox(height: 40),
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
            obscureText: false,
            hintText: 'أدخل بريدك الأليكتروني',
          ),
          SizedBox(height: 30),
          CustomButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VerificationCode()));
            },
            text: 'أرسال',
          )
        ],
      ),
    );
  }
}
