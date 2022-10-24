import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listPopMenu = [
      {'title': 'Profile', 'icon': const Icon(Icons.person_outline)},
      {'title': 'Logout', 'icon': const Icon(Icons.logout)},
    ];

    var actions = [
      PopupMenuButton<String>(
        onSelected: ((value) {
          handleClick(context, value);
        }),
        itemBuilder: (BuildContext ctx) {
          return listPopMenu.map((ch) {
            return PopupMenuItem<String>(
                value: ch['title'].toString(),
                child: ListTile(
                    leading: ch['icon'] as Widget,
                    title: Text(ch['title'].toString())));
          }).toList();
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: actions,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 200,
              ),
              child: Image.asset(
                'assets/img/welcome.png',
                width: 200,
                height: 100,
              ),
            ),
            Text(
              "Welcome, user!",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "This is the home page",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  void handleClick(BuildContext context, Object? value) {
    switch (value) {
      case 'Logout':
        const snackBar = SnackBar(content: Text("Logout success!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        Navigator.of(context)
            .pushNamedAndRemoveUntil('login', (route) => false);
        break;
      case 'Profile':
        Navigator.of(context).pushNamed('profile');
        break;
    }
  }
}
