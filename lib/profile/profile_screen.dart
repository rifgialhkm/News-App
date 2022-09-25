import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        leading: BackButton(),
      ),
    );
  }

  void redirectToHome() {
    Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);
  }
}
