import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_task/screens/home_screen.dart';
import 'package:flutter_task/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoggedIn = false;
  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      if (isLoggedIn) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/image.gif",
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.005,
            ),
            Text(
              'Dog\'s Path',
              style: TextStyle(
                  fontSize: size.width * 0.08,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'by',
              style:
                  TextStyle(fontSize: size.width * 0.03, color: Colors.white),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'VirtouStack Softwares Pvt. Ltd.',
              style:
                  TextStyle(fontSize: size.width * 0.05, color: Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}
