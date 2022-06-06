import 'package:bsafer/view/components/shared_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DesignPatternsBody extends StatefulWidget {
  const DesignPatternsBody({Key? key}) : super(key: key);

  @override
  State<DesignPatternsBody> createState() => _DesignPatternsBodyState();
}

class _DesignPatternsBodyState extends State<DesignPatternsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff121517),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 5),
                  SharedCard(
                    index: 1,
                    title: 'Gerador de CPFs',
                    page: 'cpf-generator',
                  ),
                  SizedBox(height: 15),
                  SharedCard(index: 2, title: 'Validador de CPFs', page: ''),
                  SizedBox(height: 15),
                  SharedCard(index: 3, title: 'Alguma coisa', page: ''),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
