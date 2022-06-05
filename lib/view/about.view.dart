import 'package:bsafer/view/components/about_body.dart';
import 'package:bsafer/view/components/app_bar.dart';
import 'package:flutter/material.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Sobre o Dev'),
      body: const AboutBody(),
    );
  }
}
