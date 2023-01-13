import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Menu1"),
          ),
          ListTile(
            title: Text("Menu2"),
          ),
          ListTile(
            title: Text("Menu3"),
          ),
        ],
      )
    );
  }
}
