import 'package:demirli_tech_website/sections/body_sections.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/scroll_provider.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ListView.builder(
      controller: scrollProvider.controller,
      itemCount: BodySections.views.length,
      itemBuilder: (context, index) => BodySections.views[index],
    );
  }
}
