import 'package:bsafer/view/about/components/about_card.dart';
import 'package:bsafer/view/components/horizontal_list.dart';
import 'package:bsafer/view/components/progress_bar.dart';
import 'package:flutter/material.dart';

class AboutBody extends StatefulWidget {
  const AboutBody({Key? key}) : super(key: key);

  @override
  State<AboutBody> createState() => _AboutBodyState();
}

class _AboutBodyState extends State<AboutBody> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AboutCard(
                    photo:
                        'https://iconape.com/wp-content/png_logo_vector/flutter-logo.png',
                    name: 'Enzo Seiji',
                    description:
                        'Flutter é um kit de desenvolvimento de interface de usuário, de código aberto, criado pela empresa Google em 2015, baseado na linguagem de programação Dart.',
                    social: {
                      'whatsapp': '12334556789',
                      'github': 'https://github.com/eseiji',
                      'instagram': 'instagramEnzo',
                      'facebook': 'facebookEnzo'
                    },
                  ),
                  SizedBox(height: 25),
                  HorizontalList(title: 'Tecnologias favoritas'),
                  SizedBox(height: 25),
                  ProgressBar(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
