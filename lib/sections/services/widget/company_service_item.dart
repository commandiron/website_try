import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/app_padding.dart';
import '../../../configs/app_text.dart';
import '../../../model/company_service.dart';
import '../../../provider/scroll_provider.dart';

class CompanyServiceItem extends StatefulWidget {
  const CompanyServiceItem(
    {
      required this.width,
      required this.height,
      required this.companyService,
      Key? key
    }
  ) : super(key: key);

  final double width;
  final double height;
  final CompanyService companyService;

  @override
  State<CompanyServiceItem> createState() => _CompanyServiceItemState();
}

class _CompanyServiceItemState extends State<CompanyServiceItem> {

  ColorFilter _colorFilter = const ColorFilter.mode(Colors.white, BlendMode.srcATop);
  double _frameColorOpacity = 0.5;

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);
    
    return Center(
      child: InkWell(
        onTap: () {
          scrollProvider.scroll(4);
        },
        onHover: (value) {
          setState(() {
            if (value) {
              _colorFilter = const ColorFilter.mode(
                  Colors.transparent,
                  BlendMode.color
              );
              _frameColorOpacity = 1.0;
            } else {
              _colorFilter = const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcATop
              );
              _frameColorOpacity = 0.5;
            }
          });
        },
        child: Container(
          alignment: Alignment.center,
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color:
              Theme.of(context).colorScheme.primary.withOpacity(_frameColorOpacity),
            )
          ),
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
                    style: AppText.h2?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: ColorFiltered(
                      colorFilter: _colorFilter,
                      child: Image.asset(
                        widget.companyService.logoAssetPath
                      ),
                    ),
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
