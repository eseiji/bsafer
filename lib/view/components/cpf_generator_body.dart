import 'package:flutter/material.dart';
import 'dart:math';

class CPFGeneratorBody extends StatefulWidget {
  const CPFGeneratorBody({Key? key}) : super(key: key);

  @override
  State<CPFGeneratorBody> createState() => _CPFGeneratorBodyState();
}

class _CPFGeneratorBodyState extends State<CPFGeneratorBody> {
  late String cpf = '';

  void cpfGenerate() {
    var _randomNumber = Random();

    var first = _randomNumber.nextInt(999);
    first = first < 100 ? first + 100 : first;

    var second = _randomNumber.nextInt(999);
    second = second < 100 ? second + 100 : second;

    var third = _randomNumber.nextInt(999);
    third = third < 100 ? third + 100 : third;

    var last = _randomNumber.nextInt(99);
    last = last < 10 ? last + 10 : last;

    setState(() {
      cpf = '$first.$second.$third-$last';
    });
  }

  @override
  void initState() {
    cpfGenerate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff121517),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SelectableText(
                    cpf,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () => cpfGenerate(),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Gerar CPF',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
