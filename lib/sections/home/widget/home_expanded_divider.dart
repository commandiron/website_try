import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
class HomeExpandedDivider extends StatelessWidget {
  const HomeExpandedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Theme.of(context).colorScheme.primary,
        height: 2,
        thickness: 2,
      ),
    );
  }
}
