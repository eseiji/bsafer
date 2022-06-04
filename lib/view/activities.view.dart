import 'package:bsafer/view/components/activities_body.view.dart';
import 'package:bsafer/view/components/app_bar.view.dart';
import 'package:bsafer/view/components/bottom_nav_bar.view.dart';
import 'package:flutter/material.dart';

class ActivitiesView extends StatefulWidget {
  const ActivitiesView({Key? key}) : super(key: key);

  @override
  State<ActivitiesView> createState() => _ActivitiesViewState();
}

class _ActivitiesViewState extends State<ActivitiesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar('Atividades'),
      body: const ActivitiesBody(),
      // bottomNavigationBar: Container(),
    );
  }
}
