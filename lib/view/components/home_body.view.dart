import 'package:bsafer/view/components/card.view.dart';
import 'package:flutter/material.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff121517),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          const HomeCard(
              title: 'Leitura de mockup',
              nExercises: 2,
              description:
                  'Aplicação da técnica de leitura de mockup, contendo 2 exercícios'),
          const SizedBox(height: 15),
          const HomeCard(
              title: 'Design Patterns',
              nExercises: 1,
              description: 'Ambiente destinado a testes e estudos em geral'),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
