import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.title,
      required this.nExercises,
      required this.description})
      : super(key: key);

  final String title;
  final int nExercises;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              // color: Colors.white,
              color: Color(0xff172026),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.circle_rounded,
                          color: Colors.blueAccent,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      // textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Exercícios:  ',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: '$nExercises',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        description,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.circle_notifications_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Acessar código fonte',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          'Ver mais',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
    // Container(
    //   color: Color(0xFF172026),
    //   height: 100,
    //   width: 100,
    //   child: ,
    // );
  }
}
