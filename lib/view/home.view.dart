import 'package:bsafer/view/about.view.dart';
import 'package:bsafer/view/activities.view.dart';
import 'package:bsafer/view/repositories.view.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentPage = 0;
  late PageController _pageController;

  // void _onItemSelected(int index) {
  //   // print(index);
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  //   if (index == 1) {
  //     Navigator.of(context).pushNamed('/repositories');
  //   }
  // }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  _setCurrentPage(page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          ActivitiesView(),
          RepositoriesView(),
          AboutView(),
        ],
        onPageChanged: _setCurrentPage,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xff121517),
        ),
        child: BottomNavigationBar(
          onTap: (page) {
            _pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          currentIndex: _currentPage,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded),
              label: 'Atividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge_rounded),
              label: 'Repositórios',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Sobre o dev',
            ),
          ],
        ),
      ),
    );
  }
}
