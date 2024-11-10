import 'package:flutter/material.dart';

class StepIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  StepIcon({required this.icon, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: isActive
              ? Color(0xFFA86B33)
              : const Color.fromARGB(255, 217, 205, 205),
          child: isActive
              ? Icon(Icons.check, color: Colors.white, size: 16)
              : null,
        ),
        SizedBox(height: 4),
        Icon(
          icon,
          color: Colors.black,
        ),
      ],
    );
  }
}
