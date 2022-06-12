import 'package:bsafer/view/components/app_bar.dart';
import 'package:bsafer/view/components/cep_finder_body.dart';
import 'package:flutter/material.dart';

class CEPFinderView extends StatelessWidget {
  const CEPFinderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Consultar CEP'),
      body: const CEPFinderBody(),
    );
  }
}
