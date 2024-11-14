import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/core/utils/NetWork/api_serves.dart';
import 'package:hidaya/core/utils/NetWork/service_locator.dart';
import 'package:hidaya/features/home/data/repo/ayah_repo_impe.dart';
import 'package:hidaya/features/home/presentation/manager/cubit/all_ayas_cubit.dart';
import 'package:hidaya/features/splash/presentation/views/splash_view.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AllAyasCubitCubit(getIt.get<AyahRepoImpe>())..getAllAyas(),child: MaterialApp(
          home: const SplashView(),debugShowCheckedModeBanner: false,
        ),);
  }
}
