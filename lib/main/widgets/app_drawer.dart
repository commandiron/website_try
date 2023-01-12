import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Text("Drawer Item 1"),
          Text("Drawer Item 2"),
          Text("Drawer Item 3"),
        ]
      ),
    );
  }
}
