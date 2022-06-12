import 'package:bsafer/view/tinder/components/tinder_body.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const TinderBody(),
    );
  }
}
