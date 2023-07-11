import 'package:e_forest/view/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String route = "/splashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nextbro();
  }

  _nextbro() async {
    await Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushNamed(context, Login.route.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Image.asset("assets/greentreelogo.png"),
      ),
    );
  }
}
