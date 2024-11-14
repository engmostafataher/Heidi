import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:hidaya/features/home/presentation/views/widgets/list_ayah_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/ayah2_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/ayah3_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/ayah_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/home_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/setting_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _tabIndex = 2;

  int get tabIndex => _tabIndex;

  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  List<Widget> bodys = [const ListAyahBody(),const Ayah2Body(),const HomeBody(),const Ayah3Body(),const SettingBody()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodys[_tabIndex],
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.menu_book, color: Colors.deepPurple),
          Icon(Icons.mosque, color: Colors.deepPurple),
          Icon(Icons.home, color: Colors.deepPurple),
          Icon(Icons.person, color: Colors.deepPurple),
          Icon(Icons.settings, color: Colors.deepPurple),
        ],
        inactiveIcons: const [
          Text("قرأن"),
          Text("الصلاه"),
          Text("القائمه"),
          Text("حديث"),
          Text("الاعددات"),
        ],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          // pageController.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.deepPurple,
        elevation: 10,
      ),
    );
  }
}
