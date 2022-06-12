import 'package:bsafer/view/money_page/components/money_page_body.dart';
import 'package:flutter/material.dart';

class MoneyPageView extends StatelessWidget {
  const MoneyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const MoneyPageBody(),
    );
  }
}
