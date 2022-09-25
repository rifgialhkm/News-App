import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    finishPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/img/logo.png",
              width: 125,
              height: 125,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Center(
            child: Text(
              "News App",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF9A00)),
            ),
          ),
        ],
      ),
    );
  }

  void finishPage() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        Navigator.of(context)
            .pushNamedAndRemoveUntil("login", (route) => false);
      });
    });
  }
}
