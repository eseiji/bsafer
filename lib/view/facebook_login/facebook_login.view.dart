import 'package:bsafer/view/facebook_login/components/facebook_login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FacebookLoginView extends StatefulWidget {
  const FacebookLoginView({Key? key}) : super(key: key);

  @override
  State<FacebookLoginView> createState() => _FacebookLoginViewState();
}

class _FacebookLoginViewState extends State<FacebookLoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const FacebookLoginBody(),
    );
  }
}
