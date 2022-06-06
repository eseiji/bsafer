import 'package:flutter/material.dart';

class SharedCard extends StatelessWidget {
  const SharedCard(
      {Key? key, required this.index, required this.title, required this.page})
      : super(key: key);

  final String title;
  final int index;
  final String page;

  void redirect(BuildContext context, String page) {
    Navigator.of(context).pushNamed('/$page');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => redirect(context, page),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                color: const Color(0xff172026),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    // padding: EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(100),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '$index',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
      ),
    );
  }
}
