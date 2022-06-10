import 'package:bsafer/view/components/app_bar.dart';
import 'package:bsafer/view/components/tinder_body.dart';
import 'package:flutter/material.dart';

class TinderView extends StatefulWidget {
  const TinderView({Key? key}) : super(key: key);

  @override
  State<TinderView> createState() => _TinderViewState();
}

class _TinderViewState extends State<TinderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Tinder'),
      body: const TinderBody(),
    );
  }
}
