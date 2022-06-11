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
                  const Image(
                    width: 250,
                    image: AssetImage('assets/images/tinder.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Text(
                      'By tapping Create Account or Sign in, you agree to our Terms.\nLearn how we process your data in our Privacy Policy and Cookies Policy.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.apple,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Sign in with Apple',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.apple,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Sign in with Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.apple,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Sign in with Phone Number',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
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
