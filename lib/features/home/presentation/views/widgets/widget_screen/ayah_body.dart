import 'package:flutter/material.dart';

class AyahBody extends StatelessWidget {
  const AyahBody(
      {super.key, this.images, this.nameAyah, this.numberAyah, this.onPressed});
  final Image? images;
  final String? nameAyah;
  final String? numberAyah;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(bottom: 3,left: 10,right: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 94, 85, 59),
          borderRadius: BorderRadius.circular(10)
        ),
        child: ListTile(
            leading: SizedBox(width: 50, height: 50, child: images),
            trailing: Text('${nameAyah}',style: TextStyle(color: Colors.white,fontSize: 25),),
            title: Container(
                margin: EdgeInsets.only(right: 70),
                child: Text(
                  'اياتها\n${numberAyah}',style:TextStyle(color: Colors.white) ,
                  textAlign: TextAlign.center,
                ))),
      ),
    );
  }
}
