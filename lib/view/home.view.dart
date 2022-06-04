import 'package:bsafer/view/activities.view.dart';
// import 'package:bsafer/view/components/app_bar.view.dart';
import 'package:bsafer/view/mockup_reading.view.dart';
// import 'package:bsafer/view/components/bottom_nav_bar.view.dart';
// import 'package:bsafer/view/components/bottom_nav_bar.view2.dart';
import 'package:bsafer/view/repositories.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> data = [
    const ActivitiesView(),
    const RepositoriesView(),
    const MockupReadingView(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: const Color(0xff121517),
          // backgroundColor: CupertinoColors.white,
          activeColor: Colors.blueAccent,
          inactiveColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded),
              label: "Atividades",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge_rounded),
              label: "Repositórios",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Sobre o dev",
            )
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              print('passou');
              return data[index];
            },
          );
        },
      ),
    );
  }
}
