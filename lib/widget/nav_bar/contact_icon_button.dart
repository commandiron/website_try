import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';

class ContactIconButton extends StatefulWidget {
  const ContactIconButton(
    {
      required this.imagePath,
      required this.imageOriginalColor,
      required this.onTap,
      Key? key
    }
  ) : super(key: key);

  final String imagePath;
  final Color imageOriginalColor;
  final void Function() onTap;

  @override
  State<ContactIconButton> createState() => _ContactIconButtonState();
}

class _ContactIconButtonState extends State<ContactIconButton> {

  bool _isOnHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState((){
          _isOnHover = value;
        });
      },
      child: Padding(
        padding: AppPadding.horizontalS!,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            _isOnHover ? widget.imageOriginalColor : Colors.grey.shade200,
            BlendMode.srcATop
          ),
          child: Image.asset(
            widget.imagePath,
            width: 20,
          ),
        ),
      ),
    );
  }
}
