import 'package:flutter/material.dart';

class FollowUp extends StatelessWidget {
  const FollowUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          image: DecorationImage(image: AssetImage('assets/images/mn.jpg'))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/imagess.png'),
            backgroundColor: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'متابعة القرآن من حيث توقفت',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'توقفت عند سورة النساء',
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFA85000),
                ),
                onPressed: () {},
                child: Text(
                  'متابعة الحفظ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
