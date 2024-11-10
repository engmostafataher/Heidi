import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hidaya/core/utils/widgets/custom_button.dart';
import 'package:hidaya/features/auth/presentation/views/done.dart';

class VerificationCodeBody extends StatelessWidget {
  const VerificationCodeBody({super.key});
  double width(context) => MediaQuery.of(context).size.width;
  double height(context) => MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height(context) * .07),
          Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: Colors.black))),
          SizedBox(height: height(context) * .04),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              'رمز التحقق',
              style: TextStyle(
                fontSize: 24,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: height(context) * .02),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              'أدخل الرمز الذي أُرسل إلى رقمك *****012345',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ),
          SizedBox(height: height(context) * .07),
          OtpTextField(
            numberOfFields: 6,
            enabledBorderColor: Colors.black,
            borderRadius: BorderRadius.circular(10),
            // borderColor: Colors.red,
            // disabledBorderColor: Colors.red,
            focusedBorderColor: Color(0xFFA86B33),
            disabledBorderColor: Color(0xFFA86B33),
            borderColor: Color(0xFFA86B33),

            //        Color disabledBorderColor = const Color(),
            // Color enabledBorderColor = const Color(),
            // Color borderColor = const Color(),
            // Color focusedBorderColor = const Color(),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Container(
                        alignment: Alignment.topCenter,
                        width: 200,
                        height: 220,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/cors1.jpg'),
                          ),
                        ),
                        child: Container(
                            alignment: Alignment.bottomCenter,
                            width: double.infinity,
                            height: double.infinity,
                            child: Text(
                              'تم بنجاح',
                              style: TextStyle(fontSize: 28),
                            )),
                      ),
                      content: Container(
                          margin: EdgeInsets.only(left: 25, bottom: 5),
                          child: Text(
                            'لقد تم تعيين كلمة المرور الخاصه\n بك بنجاح ',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          )),
                      actions: [
                        CustomButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          text: 'تسجيل الدخول',
                        )
                      ],
                    );
                  });
            }, // end onSubmit
          ),
          SizedBox(height: height(context) * .07),
          CustomButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Done()));
            },
            text: 'تحقق',
          ),
          SizedBox(height: height(context) * .05),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '   إعادة ارسال',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' لم تستلم الرمز ؟  ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
