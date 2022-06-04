import 'package:flutter/material.dart';

class MockupCard extends StatelessWidget {
  const MockupCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xff172026),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100)),
                  child: Text('1'),
                ),
                // const Icon(
                //   Icons.circle_rounded,
                //   color: Colors.blueAccent,
                // ),
                // RichText(
                //   // textAlign: TextAlign.center,
                //   text: TextSpan(
                //     text: 'Exercícios:  ',
                //     style: TextStyle(
                //       color: Colors.white.withOpacity(0.5),
                //       fontSize: 12,
                //     ),
                //     children: const [
                //       TextSpan(
                //         text: 'nExercises',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 15,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
          ),
        ),
      ],
    );
  }
}
