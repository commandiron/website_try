import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';

class ContactBase extends StatelessWidget {
  const ContactBase({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.contactSectionHeight!,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: AppSize.bodyDividerHeight!
          )
        )
      ),
      child: child
    );
  }
}
