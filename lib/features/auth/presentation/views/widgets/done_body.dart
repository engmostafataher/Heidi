import 'package:flutter/material.dart';
import 'package:hidaya/features/home/presentation/views/home.dart';

class DoneBody extends StatefulWidget {
  const DoneBody({super.key});

  @override
  State<DoneBody> createState() => _DoneBodyState();
}

class _DoneBodyState extends State<DoneBody> {
  double width(context) => MediaQuery.of(context).size.width;

  double height(context) => MediaQuery.of(context).size.height;
  @override
  void initState() {
    timer();
    super.initState();
  }

  timer() {
    Future.delayed(const Duration(seconds: 4), () {
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // الكتاب المفتوح
          Container(
            width: width(context) * .8,
            height: height(context) * .5,
            decoration: BoxDecoration(
                color: Colors.brown[700],
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cn3.jpg'))),
          ),
          const SizedBox(height: 20),

          // النص العلوي
          const Text(
            'تم ارسال طلبك',
            style: TextStyle(
              color: Color(0xFFA86B33),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          // النص السفلي
          const Text(
            'يرجى الانتظار. \nسيقوم المسؤولون بتنسيقك مع أحد المحفظين',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
