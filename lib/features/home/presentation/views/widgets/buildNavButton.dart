import 'package:flutter/material.dart';

class Buildnavbutton extends StatelessWidget {
  const Buildnavbutton({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFA86B33),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Color(0xFFA86B33)),
        ),
      ],
    );
  }
}

// Widget buildNavButton(IconData icon, String label) {
//   return Column(
//     children: [
//       Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Color(0xFFA86B33),
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Icon(
//           icon,
//           color: Colors.white,
//         ),
//       ),
//       SizedBox(height: 8),
//       Text(
//         label,
//         style: TextStyle(color: Color(0xFFA86B33)),
//       ),
//     ],
//   );
// }
