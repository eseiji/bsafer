import 'package:bsafer/view/repositories.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    // print(index);
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.of(context).pushNamed('/repositories');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Products',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        print(index);
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: RepositoriesView(),
                );
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: RepositoriesView(),
                );
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: RepositoriesView(),
                );
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: RepositoriesView(),
                );
              },
            );
        }
      },
    );
  }
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: const BoxDecoration(
  //       color: Color(0xff121517),
  //     ),
  //     child: BottomNavigationBar(
  //       onTap: _onItemSelected,
  //       currentIndex: _selectedIndex,
  //       backgroundColor: Colors.transparent,
  //       selectedItemColor: Colors.blueAccent,
  //       unselectedItemColor: Colors.white,
  //       selectedLabelStyle: const TextStyle(
  //         color: Colors.blueAccent,
  //         fontWeight: FontWeight.bold,
  //       ),
  //       unselectedLabelStyle: const TextStyle(
  //         color: Colors.white,
  //         fontWeight: FontWeight.normal,
  //       ),
  //       items: const [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.receipt_long_rounded),
  //           label: 'Atividades',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.badge_rounded),
  //           label: 'Repositórios',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.person),
  //           label: 'Sobre o dev',
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
