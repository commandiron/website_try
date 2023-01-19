import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/app_padding.dart';
import '../../../configs/app_text.dart';
import '../../../model/company_service.dart';
import '../../../provider/scroll_provider.dart';

class CompanyServiceItem extends StatefulWidget {
  const CompanyServiceItem({required this.companyService, Key? key}) : super(key: key);

  final CompanyService companyService;

  @override
  State<CompanyServiceItem> createState() => _CompanyServiceItemState();
}

class _CompanyServiceItemState extends State<CompanyServiceItem> {

  ColorFilter _colorFilter = const ColorFilter.mode(Colors.white, BlendMode.srcATop);

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
            } else {
              _colorFilter = const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcATop
              );
            }
          });
        },
        child: Container(
          alignment: Alignment.center,
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color:
              Theme.of(context).colorScheme.primary,
            )
          ),
          child: Stack(
            children: [
              Container(
                padding: AppPadding.verticalL,
                alignment: Alignment.topCenter,
                child: Text(
                  widget.companyService.title,
                  style: AppText.h2?.copyWith(color: Colors.white),
                ),
              ),
              Container(
                padding: AppPadding.verticalXXL,
                alignment: Alignment.center,
                child: ColorFiltered(
                  colorFilter: _colorFilter,
                  child: Image.asset(
                    widget.companyService.logoAssetPath
                  ),
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
