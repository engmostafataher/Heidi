import 'dart:async';

import 'package:flutter/material.dart';

class TopDesign extends StatefulWidget {
  const TopDesign({super.key});

  @override
  State<TopDesign> createState() => _TopDesignState();
}

class _TopDesignState extends State<TopDesign> {
  late Timer _timer;
  Duration _timeLeft = const Duration(hours: 4, minutes: 11, seconds: 42);

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _timeLeft = _timeLeft - const Duration(seconds: 1);
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/masa.jpg', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, left: 350),
            child: IconButton(
              icon: const Icon(Icons.notifications_active),
              color: const Color.fromARGB(255, 248, 178, 2), // لون الجرس
              iconSize: 40, // حجم الأيقونة
              onPressed: () {
                // أضف أي أكشن هنا عند النقر على الأيقونة
              },
            ),
          ),

          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 130, left: 30),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Section with Date and Location
                    Text(
                      'الثلاثاء, 13 مارس',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '٣ رمضان 1445 هجري',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                    // Prayer Time Progress Indicator
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 20, top: 50),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: CircularProgressIndicator(
                        value:
                            0.7, // Adjust this value to control the arc progress
                        strokeWidth: 8,
                        backgroundColor: Colors.grey[200],
                        color: const Color.fromARGB(255, 197, 151, 35),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'الفجر',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'ص 04:39',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '-${_formatDuration(_timeLeft)}',
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 260, left: 250),
            child: const Text(
              'الدقهليه.المنصوره',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

String _formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String hours = twoDigits(duration.inHours);
  String minutes = twoDigits(duration.inMinutes.remainder(60));
  String seconds = twoDigits(duration.inSeconds.remainder(60));
  return "$hours:$minutes:$seconds";
}
