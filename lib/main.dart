import 'package:bsafer/view/cep_finder.view.dart';
import 'package:bsafer/view/cpf_generator.view.dart';
import 'package:bsafer/view/cpf_validator.view.dart';
import 'package:bsafer/view/design_patterns.view.dart';
import 'package:bsafer/view/home.view.dart';
import 'package:bsafer/view/mockup_reading.view.dart';
import 'package:bsafer/view/money_page.view.dart';
import 'package:bsafer/view/repositories.view.dart';
import 'package:bsafer/view/tinder.view.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bSafer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeView(),
      routes: {
        '/home': (context) => const HomeView(),
        '/repositories': (context) => const RepositoriesView(),
        '/mockup-reading': (context) => const MockupReadingView(),
        '/design-patterns': (context) => const DesignPatternsView(),
        '/cpf-generator': (context) => const CPFGeneratorView(),
        '/cpf-validator': (context) => const CPFValidatorView(),
        '/tinder': (context) => const TinderView(),
        '/money-page': (context) => const MoneyPageView(),
        '/cep-finder': (context) => const CEPFinderView(),
      },
    );
  }
}
