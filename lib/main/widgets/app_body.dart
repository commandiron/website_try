import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 3000,
        child: Center(child: Text("App Body"),)
      ),
    );
  }
}
