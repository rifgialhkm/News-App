import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listPopMenu = [
      {'title': 'Profile', 'icon': const Icon(Icons.person_outline)},
      {'title': 'Logout', 'icon': const Icon(Icons.logout)},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          PopupMenuButton(
            onSelected: ((value) {
              handleClick(context, value);
            }),
            itemBuilder: ((context) {
              return listPopMenu.map((choice) {
                return PopupMenuItem(
                    value: choice['title'].toString,
                    child: ListTile(
                      leading: choice['icon'] as Widget,
                      title: Text(choice['title'].toString()),
                    ));
              }).toList();
            }),
          ),
        ],
      ),
      body: const Center(
        child: Text("Welcome, user!"),
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
        Navigator.of(context)
            .pushNamedAndRemoveUntil('profile', (route) => false);
        break;
    }
  }
}
