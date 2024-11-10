import 'package:flutter/material.dart';
import 'package:hidaya/features/home/presentation/views/widgets/buildNavButton.dart';

class Buildnavigationbuttons extends StatelessWidget {
  const Buildnavigationbuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Buildnavbutton(
          icon: Icons.calendar_today,
          label: 'التقويم',
        ),
        Buildnavbutton(
          icon: Icons.accessibility_new,
          label: 'الصلاة',
        ),
        Buildnavbutton(
          icon: Icons.book,
          label: 'حديث',
        ),
        Buildnavbutton(
          icon: Icons.menu_book,
          label: 'قرآن',
        ),
      ],
    );
  }
}
