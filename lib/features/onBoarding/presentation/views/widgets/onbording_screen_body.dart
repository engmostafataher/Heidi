import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:hidaya/core/utils/size_config.dart';
import 'package:hidaya/features/auth/presentation/views/login.dart';

class OnbordingScreenBody extends StatelessWidget {
  double width(context) => MediaQuery.of(context).size.width;
  double height(context) => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: GlobalKey<NavigatorState>(),
      home: OnBoardingSlider(
        addController: true,
        imageVerticalOffset: 50,
        imageHorizontalOffset: 50,
        addButton: true,
        controllerColor: Colors.grey,
        pageBackgroundColor: Colors.white,
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Login',
        onFinish: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Login()));
          // GoRouter.of(context).push(AppRouter.KLogin);
        },
        finishButtonStyle: const FinishButtonStyle(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          backgroundColor: Colors.black38,
        ),
        skipTextButton: const Text(
          'Skip',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        trailing: Container(),
        background: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/cn1.jpg',
              fit: BoxFit.fill,
              height: 360,
              width: 300,
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/cn2.jpg',
              fit: BoxFit.fill,
              height: 360,
              width: 300,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/cn3.jpg',
              fit: BoxFit.fill,
              height: 360,
              width: 300,
            ),
          ),
          // Image.asset(width: 350, height: 350, AssetsImage.onboardingImage1),
          // Image.asset(width: 350, height: 350, AssetsImage.onboardingImage2),
          // Image.asset(width: 350, height: 350, AssetsImage.onboardingImage3),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 430,
                ),
                Text(
                  'مرحباً!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'ابدأ رحلتك في حفظ القرآن بسهولة وبالوتيرة التي تناسبك',
                    style: TextStyle(color: Color(0xffFFC100), fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 430,
                ),
                Stack(
                  children: [
                    Stack(
                      children: [],
                    )
                  ],
                ),
                Text(
                  'خطط مخصصة',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    'ضع أهدافك الخاصة وتلقَّ تذكيرات مخصصة لتبقى على المسار',
                    style: TextStyle(
                        color: Color(0xffFFC100),
                        fontSize: 16,
                        fontFamily: 'ShadowsIntoLight'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 430,
                ),
                Text(
                  'حافظ على التحفيز',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    'استلم تذكيرات يومية وآيات ملهمة تبقيك متصلاً بالقرآن',
                    style: TextStyle(color: Color(0xffFFC100), fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
