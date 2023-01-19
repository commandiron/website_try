import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';

class LogoItem extends StatefulWidget {
  const LogoItem({required this.logoAssetPath, Key? key}) : super(key: key);

  final String logoAssetPath;

  @override
  State<LogoItem> createState() => _LogoItemState();
}

class _LogoItemState extends State<LogoItem> {

  ColorFilter _colorFilter = const ColorFilter.mode(Colors.white, BlendMode.srcATop);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.verticalXXL,
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            if (value) {
              _colorFilter = const ColorFilter.mode(
                  Colors.transparent,
                  BlendMode.color
              );
            } else {
              _colorFilter = const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcATop
              );
            }
          });
        },
        child: ColorFiltered(
          colorFilter: _colorFilter,
          child: Image.asset(
              widget.logoAssetPath
          ),
        )
      )
    );
  }
}
