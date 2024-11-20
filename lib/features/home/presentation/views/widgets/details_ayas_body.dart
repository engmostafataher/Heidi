import 'package:flutter/material.dart';
import 'package:hidaya/features/home/data/models/ayas/ayah.dart';
import 'package:hidaya/features/home/data/models/ayas/ayas.dart';

class DetailsAyasBody extends StatefulWidget {
  const DetailsAyasBody({super.key});


  @override
  State<DetailsAyasBody> createState() => _DetailsAyasBodyState();
}

class _DetailsAyasBodyState extends State<DetailsAyasBody> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Ayas;

    // var message = data!['id'];

    return Column(
      children: [
        const SizedBox(height: 60,),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 181, 166, 93),
            borderRadius: BorderRadius.circular(10),
            border: const Border.symmetric(horizontal: BorderSide(width: 2.5),vertical:BorderSide(width: 2.5) )
          ),
          child: Text('${arguments.name}',style: const TextStyle(fontSize: 25),)),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 181, 166, 93),
                  borderRadius: BorderRadius.circular(10),
                  border: const Border.symmetric(horizontal: BorderSide(width: 1),vertical:BorderSide(width: 1) ,)
                ),
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      '${arguments.ayahs![index].text}',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ),
                    CircleAvatar(
                      backgroundColor:  Colors.white,
                      child: Text('${index+1}'))
                  ],
                ),
              );
            },
            itemCount: arguments.ayahs!.length,
          ),
        ),
      ],
    );
  }
}
