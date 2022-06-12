import 'package:bsafer/view/cep_finder/cep_finder.view.dart';
import 'package:bsafer/view/cpf_generator/cpf_generator.view.dart';
import 'package:bsafer/view/cpf_validator/cpf_validator.view.dart';
import 'package:bsafer/view/design_patterns/design_patterns.view.dart';
import 'package:bsafer/view/facebook_login/facebook_login.view.dart';
import 'package:bsafer/view/home/home.view.dart';
import 'package:bsafer/view/mockup_reading/mockup_reading.view.dart';
import 'package:bsafer/view/money_page/money_page.view.dart';
import 'package:bsafer/view/repositories/repositories.view.dart';
import 'package:bsafer/view/tinder/tinder.view.dart';
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
        '/cep-finder': (context) => const CEPFinderView(),
        '/money-page': (context) => const MoneyPageView(),
        '/tinder': (context) => const TinderView(),
        '/facebook-login': (context) => const FacebookLoginView(),
      },
    );
  }
}
