import 'package:bsafer/view/components/shared_card.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MockupReadingBody extends StatefulWidget {
  const MockupReadingBody({Key? key}) : super(key: key);

  @override
  State<MockupReadingBody> createState() => _MockupReadingBodyState();
}

class _MockupReadingBodyState extends State<MockupReadingBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff121517),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 5),
                  SharedCard(index: 1, title: 'Money Page', page: 'money-page'),
                  SizedBox(height: 15),
                  SharedCard(index: 1, title: 'Tinder++', page: 'tinder'),
                  SizedBox(height: 15),
                  SharedCard(index: 3, title: 'Facebook', page: ''),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
