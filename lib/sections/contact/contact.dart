import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.contactSectionHeight!,
      color: Colors.white,
    );
  }
}