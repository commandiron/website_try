import 'package:demirli_tech_website/utils/body_elements.dart';
import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: BodyElements.views.length,
      itemBuilder: (context, index) => BodyElements.views[index],
    );
  }
}
