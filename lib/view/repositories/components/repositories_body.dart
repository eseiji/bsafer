import 'package:bsafer/view/repositories/components/repositories_card.dart';
import 'package:flutter/material.dart';
import 'package:bsafer/services/api_github.dart';

class RepositoriesBody extends StatefulWidget {
  const RepositoriesBody({Key? key}) : super(key: key);

  @override
  State<RepositoriesBody> createState() => _RepositoriesBodyState();
}

class _RepositoriesBodyState extends State<RepositoriesBody> {
  var apiGithub = ApiGithubService();
  // LIMITE DE REQUISIÇÕES ATINGIDO late Future<List<dynamic>> _userRepositories;
  late List<dynamic> _userRepositories;

  @override
  void initState() {
    // LIMITE DE REQUISIÇÕES ATINGIDO _userRepositories = apiGithub.searchRepositories();
    _userRepositories = apiGithub.repositories;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color(0xff121517),
            ),
            child: _userRepositories.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemCount: _userRepositories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RepositoriesCard(
                        repository: _userRepositories[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
          ),
        ),
      ],
    );
  }
}
