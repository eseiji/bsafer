import 'package:bsafer/view/components/app_bar.dart';
import 'package:bsafer/view/components/repositories_body.dart';
import 'package:flutter/material.dart';

class RepositoriesView extends StatefulWidget {
  const RepositoriesView({Key? key}) : super(key: key);

  @override
  State<RepositoriesView> createState() => _RepositoriesViewState();
}

class _RepositoriesViewState extends State<RepositoriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Repositórios'),
      body: const RepositoriesBody(),
    );
  }
}
