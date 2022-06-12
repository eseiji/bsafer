import 'package:flutter/material.dart';

class FacebookLoginBody extends StatefulWidget {
  const FacebookLoginBody({Key? key}) : super(key: key);

  @override
  State<FacebookLoginBody> createState() => _FacebookLoginBodyState();
}

class _FacebookLoginBodyState extends State<FacebookLoginBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color(0xff2C4988),
              gradient: RadialGradient(
                colors: [Color(0xFF4865A5), Color(0xff2C4988)],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image.network(
                      'https://uploads-ssl.webflow.com/5ad6274b9b5a959cb0530ceb/5bc204515a5ed9d68c701b8e_black-facebook-png-8.png',
                      height: 70,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  const SizedBox(height: 70),
                  const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Email or Phone',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const TextField(
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF223B73),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
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
