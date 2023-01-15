import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:flutter/material.dart';

import '../configs/app_text.dart';

class VisionCategoryButtonMobile extends StatefulWidget {
  const VisionCategoryButtonMobile (
    {
      required this.title, 
      this.isActive = false,
      Key? key
    }
  ) : super(key: key);

  final String title;
  final bool isActive;

  @override
  State<VisionCategoryButtonMobile> createState() => _VisionCategoryButtonState();
}

class _VisionCategoryButtonState extends State<VisionCategoryButtonMobile> {

  bool _isOnHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isActive
        ? () {}
        : null,
      onHover: (value) {
        setState(() {
          _isOnHover = value;
        });
      },
      child: CircleAvatar(
        radius: 36,
        backgroundColor: _isOnHover
          ? Theme.of(context).colorScheme.primary.withOpacity(0.75)
          : Theme.of(context).colorScheme.primaryContainer.withOpacity(0.75),
        child: Padding(
          padding: AppPadding.allS!,
          child: FittedBox(
            child: Text(
              widget.title,
              style: AppText.b2!.copyWith(
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
