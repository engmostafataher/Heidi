import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/features/prayer/presentation/manager/cubit/cubit_prayer_cubit.dart';

class PrayerBody extends StatelessWidget {
  const PrayerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitPrayerCubit, CubitPrayerState>(
        builder: (context, state) {
      if (state is AllPrayerLoaddid) {
        return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/saaa.jpg'),
                  fit: BoxFit.fill)),
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: const Text(
                  'مواقت الصلاه',
                  style: TextStyle(fontSize: 30, color: Color(0xFFCE9834)),
                ),
              ),
              // العناوين
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الصلاة',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFCE9834)),
                  ),
                  Text(
                    'الأذان',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFCE9834)),
                  ),
                ],
              ),
              // Divider(thickness: 1, color: Colors.grey),

              // قائمة الصلوات
              buildPrayerRow('الفجر', state.prayer.fajr),
              buildPrayerRow('الظهر', state.prayer.dhuhr),
              buildPrayerRow('العصر', state.prayer.asr),
              buildPrayerRow('المغرب', state.prayer.maghrib),
              buildPrayerRow('العشاء', state.prayer.isha),
            ],
          ),
        );
      } else if (state is AllPrayerError) {
      
        return Center(child: Text(state.toString()));
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }

  Widget buildPrayerRow(String prayerName, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            prayerName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            time,
            style: const TextStyle(
                fontSize: 18,
                color: Color(0xFF950135),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
