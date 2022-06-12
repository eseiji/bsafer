import 'package:bsafer/view/components/app_bar.dart';
import 'package:bsafer/view/design_patterns/components/design_patterns_body.dart';
import 'package:flutter/material.dart';

class DesignPatternsView extends StatefulWidget {
  const DesignPatternsView({Key? key}) : super(key: key);

  @override
  State<DesignPatternsView> createState() => _DesignPatternsViewState();
}

class _DesignPatternsViewState extends State<DesignPatternsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Design Patterns'),
      body: const DesignPatternsBody(),
    );
  }
}
