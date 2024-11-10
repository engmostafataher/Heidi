import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/widgets/custom_button.dart';
import 'package:hidaya/core/utils/widgets/custom_text_filed.dart';
import 'package:hidaya/features/auth/presentation/views/widgets/information_create_account.dart';
import 'package:hidaya/features/auth/presentation/views/widgets/information_login.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  double width(context) => MediaQuery.of(context).size.width;
  double height(context) => MediaQuery.of(context).size.height;
  int isValue = 0;
  bool isChanck = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'أولي العزم',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'قم بتسجيل الدخول أو إنشاء حساب جديد\nلحفظ تقدمك',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Center(
                child: ToggleButtons(
                  isSelected: [true, false],
                  onPressed: (index) {
                    setState(() {
                      isChanck = !isChanck;
                      isValue = index;
                      if (index == 0) {
                        InformationLogin();
                      } else {
                        InformationCreateAccount();
                      }
                    });
                  },
                  borderRadius: BorderRadius.circular(20),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'إنشاء حساب',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  selectedColor: isChanck ? Colors.black : Colors.brown,
                  fillColor: isChanck ? Colors.white : Colors.brown[50],
                ),
              ),
              Column(
                children: [
                  if (isValue == 0) InformationLogin(),
                  if (isValue == 1) InformationCreateAccount(),
                ],
              ),
              CustomButton(
                onPressed: () {},
                text: 'تسجيل الدخول',
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('خيارات تسجيل الدخول الأخرى'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.g_mobiledata),
                    ),
                  ),
                  SizedBox(width: 20),
                  // Icon for Google
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.facebook),
                    ),
                  ),

                  SizedBox(width: 20),
                  // Icon for Apple
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.apple, color: Colors.black)),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
