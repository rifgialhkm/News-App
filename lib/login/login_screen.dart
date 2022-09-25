import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/img/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    "News App",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Color(0xFFFF9A00),
                        ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.caption,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: "Input your email"),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Password",
                  style: Theme.of(context).textTheme.caption,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Input your password"),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () => redirectToHome(),
                    child: const Text("Sign in"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void redirectToHome() {
    const snackBar = SnackBar(content: Text("Login Success!"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);
  }
}
