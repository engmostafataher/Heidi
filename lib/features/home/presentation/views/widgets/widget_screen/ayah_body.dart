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
      child:Container(
  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
  decoration: BoxDecoration(
    color:  const Color.fromARGB(255, 181, 166, 93), // لون خلفية مشابه
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // العمود الأول (رقم السورة والصورة)
      Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 50,
            height: 50,
            child: images, // الصورة (مثل الكعبة أو القبة)
          ),
        ],
      ),
      const SizedBox(width: 30,),

      // العمود الثاني (عدد الآيات)
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'آياتها',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            '$numberAyah', // عدد الآيات
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),

      // العمود الثالث (اسم السورة)
      Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '$nameAyah',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.end,
          ),
        ),
      ),
    ],
  ),
),

    );
  }
}
