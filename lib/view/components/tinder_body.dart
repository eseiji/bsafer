import 'package:flutter/material.dart';

class TinderBody extends StatefulWidget {
  const TinderBody({Key? key}) : super(key: key);

  @override
  State<TinderBody> createState() => _TinderBodyState();
}

class _TinderBodyState extends State<TinderBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Color(0xffE94A76), Color(0xffED6F64)],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage('assets/images/tinder.png'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.apple,
                          color: Colors.white,
                        ),
                        Text(
                          'Sign in with Apple',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.apple,
                          color: Colors.white,
                        ),
                        Text(
                          'Sign in with Apple',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.apple,
                          color: Colors.white,
                        ),
                        Text(
                          'Sign in with Apple',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Trouble signing in?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
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
