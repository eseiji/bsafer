import 'package:bsafer/view/components/app_bar.dart';
import 'package:bsafer/view/components/cpf_validator_body.dart';
import 'package:flutter/material.dart';

class CPFValidatorView extends StatefulWidget {
  const CPFValidatorView({Key? key}) : super(key: key);

  @override
  State<CPFValidatorView> createState() => _CPFValidatorViewState();
}

class _CPFValidatorViewState extends State<CPFValidatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Validador de CPF'),
      body: const CPFValidatorBody(),
    );
  }
}
