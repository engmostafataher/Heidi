import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/core/utils/network/api_serves.dart';
import 'package:hidaya/core/utils/network/service_locator.dart';
import 'package:hidaya/features/home/data/repo/ayah_repo_impe.dart';
import 'package:hidaya/features/home/presentation/manager/cubit/all_ayas_cubit.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/details_ayas.dart';
import 'package:hidaya/features/prayer/data/repo/prayer_repo_impo.dart';
import 'package:hidaya/features/prayer/presentation/manager/cubit/cubit_prayer_cubit.dart';
import 'package:hidaya/features/splash/presentation/views/splash_view.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AllAyasCubitCubit(getIt.get<AyahRepoImpe>())..getAllAyas(),),
        BlocProvider(create: (context)=>CubitPrayerCubit(getIt.get<PrayerRepoImpo>())..getAllPrayer(),),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashView(),
          '/details_ayas': (context) => const DetailsAyas()
        },
        debugShowCheckedModeBanner: false,
        // home: const SplashView(),debugShowCheckedModeBanner: false,
      ),
    );
  }


}
