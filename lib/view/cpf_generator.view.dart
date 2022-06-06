import 'package:bsafer/view/components/app_bar.dart';
import 'package:bsafer/view/components/cpf_generator_body.dart';
import 'package:flutter/material.dart';

class CPFGeneratorView extends StatefulWidget {
  const CPFGeneratorView({Key? key}) : super(key: key);

  @override
  State<CPFGeneratorView> createState() => _CPFGeneratorViewState();
}

class _CPFGeneratorViewState extends State<CPFGeneratorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Gerador de CPF'),
      body: const CPFGeneratorBody(),
    );
  }
}
