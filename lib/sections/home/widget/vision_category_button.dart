import 'package:flutter/material.dart';

import '../../../configs/app_text.dart';

class VisionCategoryButton extends StatefulWidget {
  const VisionCategoryButton (
    {
      required this.title, 
      this.isActive = false,
      Key? key
    }
  ) : super(key: key);

  final String title;
  final bool isActive;

  @override
  State<VisionCategoryButton> createState() => _VisionCategoryButtonState();
}

class _VisionCategoryButtonState extends State<VisionCategoryButton> {

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
        radius: 80,
        backgroundColor: _isOnHover
          ? Theme.of(context).colorScheme.primary.withOpacity(0.75)
          : Theme.of(context).colorScheme.primaryContainer.withOpacity(0.75),
        child: Text(
          widget.title,
          style: AppText.h2!.copyWith(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
