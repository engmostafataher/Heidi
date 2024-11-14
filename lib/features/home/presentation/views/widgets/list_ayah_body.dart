import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/features/home/presentation/manager/cubit/all_ayas_cubit.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/ayah_body.dart';

class ListAyahBody extends StatelessWidget {
  const ListAyahBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllAyasCubitCubit, AllAyasState>(
        builder: (context, state) {
      if (state is AllAyasLoaddid) {
        return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return AyahBody(
                images: Image.asset(
                  'assets/images/cors3.png',
                  fit: BoxFit.fill,
                ),
                nameAyah: '${state.ayas[index].name}',
                numberAyah: '${state.ayas[index].ayahs!.length}',
                onPressed: () {},
              );
            },
            itemCount: state.ayas.length,
          ),
        );
      } else if (state is AllAyasError) {
        return Center(child: Text(state.toString()));
      }
      else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
