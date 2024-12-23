import 'package:flutter/material.dart';
import 'package:hidaya/features/onBoarding/presentation/views/on_poarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  double width(context) => MediaQuery.of(context).size.width;

  double height(context) => MediaQuery.of(context).size.height;
  AnimationController? animationController;
  Animation? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    // ..addListener(() {
    //   setState(() {
    //     if (animationController!.isCompleted) {
    //       animationController!.repeat(reverse: true);
    //     }
    //   });
    // });
    // animationController?.forward();
    animationController!.repeat(reverse: true);
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
          // ignore: use_build_context_synchronously
          context, MaterialPageRoute(builder: (context) => const OnPoardingView()));
    });
  }

  @override
  void dispose() {

    super.dispose();
    animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: fadingAnimation!,
              builder: (context, _) => Opacity(
                  opacity: fadingAnimation?.value,
                  child: SizedBox(
                      width: width(context) * .8,
                      height: height(context) * .6,
                      child: Image.asset(
                        'assets/images/cors2.png',
                        fit: BoxFit.fill,
                      ))),
            ),
          ],
        )
      ],
    );
  }
}
