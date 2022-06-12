import 'package:bsafer/view/about/about.view.dart';
import 'package:bsafer/view/activities/activities.view.dart';
import 'package:bsafer/view/repositories/repositories.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  _setCurrentPage(page) {
    setState(() {
      _currentPage = page;
      print(page);
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
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/target.svg',
                color: _currentPage == 0 ? Colors.blueAccent : Colors.white,
                height: 25.0,
              ),
              label: 'Atividades',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/github.svg',
                color: _currentPage == 1 ? Colors.blueAccent : Colors.white,
                height: 25.0,
              ),
              label: 'Repositórios',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/person.svg',
                color: _currentPage == 2 ? Colors.blueAccent : Colors.white,
                height: 25.0,
              ),
              label: 'Sobre o dev',
            ),
          ],
        ),
      ),
    );
  }
}
