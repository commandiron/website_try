import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/app_padding.dart';
import '../../../configs/app_text_style.dart';
import '../../../model/company_service.dart';
import '../../../provider/scroll_provider.dart';

class CompanyServiceItem extends StatefulWidget {
  const CompanyServiceItem(
    {
      required this.width,
      required this.height,
      required this.defaultColor,
      required this.companyService,
      Key? key
    }
  ) : super(key: key);

  final double width;
  final double height;
  final Color defaultColor;
  final CompanyService companyService;

  @override
  State<CompanyServiceItem> createState() => _CompanyServiceItemState();
}

class _CompanyServiceItemState extends State<CompanyServiceItem> {

  late Color _textColor = widget.defaultColor;
  late List<Color> _iconColorList = [widget.defaultColor, widget.defaultColor];
  double _cardElevation = 0;
  double _frameColorOpacity = 0.5;

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);
    
    return InkWell(
      onTap: () {
        scrollProvider.scroll(4);
      },
      onHover: (value) {
        setState(() {
          if (value) {
            _textColor = Theme.of(context).colorScheme.primary;
            _iconColorList = widget.companyService.highlightedIconColorList;
            _cardElevation = 20.0;
            _frameColorOpacity = 1.0;
          } else {
            _textColor = widget.defaultColor;
            _iconColorList = [widget.defaultColor, widget.defaultColor];
            _cardElevation = 0;
            _frameColorOpacity = 0.5;
          }
        });
      },
      child: Card(
        color: Theme.of(context).colorScheme.secondaryContainer,
        elevation: _cardElevation,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary.withOpacity(_frameColorOpacity)
          )
        ),
        child: Container(
          alignment: Alignment.center,
          width: widget.width,
          height: widget.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppSpace.verticalL!,
              Container(
                padding: AppPadding.horizontalL,
                alignment: Alignment.topCenter,
                child: FittedBox(
                  child: Text(
                    widget.companyService.title,
                    style: AppTextStyle.h2?.copyWith(color: _textColor),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.40,
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: _iconColorList,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Image.asset(
                        widget.companyService.logoAssetPath,
                      ),
                    )
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
