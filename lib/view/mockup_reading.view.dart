// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:bsafer/view/components/app_bar.dart';
import 'package:bsafer/view/components/mockup_reading_body.dart';
import 'package:flutter/material.dart';

class MockupReadingView extends StatefulWidget {
  const MockupReadingView({Key? key}) : super(key: key);

  @override
  State<MockupReadingView> createState() => _MockupReadingViewState();
}

class _MockupReadingViewState extends State<MockupReadingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Leitura de mockup'),
      body: const MockupReadingBody(),
    );
  }
}
