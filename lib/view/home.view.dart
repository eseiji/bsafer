import 'package:bsafer/view/components/app_bar.view.dart';
import 'package:bsafer/view/components/bottom_nav_bar.view.dart';
import 'package:bsafer/view/components/bottom_nav_bar.view2.dart';
import 'package:bsafer/view/components/home_body.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar('Atividades'),
      body: const MenuBody(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
