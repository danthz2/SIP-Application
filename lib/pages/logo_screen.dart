import 'package:flutter/material.dart';
import 'package:sip_app/pages/splash_1.dart';

class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Splash1();
          }));
        },
        child: Center(
            child: Image.asset(
          "assets/images/sip_logo.png",
          width: 150,
        )),
      ),
    );
  }
}
