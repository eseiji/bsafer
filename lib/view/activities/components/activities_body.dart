import 'package:bsafer/view/activities/components/activity_card.dart';
import 'package:flutter/material.dart';

class ActivitiesBody extends StatelessWidget {
  const ActivitiesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff121517),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 5),
                  ActivityCard(
                    title: 'Leitura de mockup',
                    nExercises: 2,
                    description:
                        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                    keyword: 'mockup-reading',
                  ),
                  SizedBox(height: 15),
                  ActivityCard(
                    title: 'Design Patterns',
                    nExercises: 1,
                    description:
                        'Ambiente destinado a testes e estudos em geral',
                    keyword: 'design-patterns',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
