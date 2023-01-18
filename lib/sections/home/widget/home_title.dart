import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../configs/app_size.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_strings.dart';
import '../../../configs/app_text.dart';
import '../../../provider/scroll_provider.dart';

class HomeTitle extends StatefulWidget {
  const HomeTitle({required this.titleWidthFactor, super.key});

  final double titleWidthFactor;

  @override
  State<HomeTitle> createState() => _HomeTitleState();
}

class _HomeTitleState extends State<HomeTitle> {
  Offset _offset = const Offset(-0.1, 0);
  double _opacity = 0.0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await Future.delayed(const Duration(milliseconds: 500));
        setState(() {
          _offset = Offset.zero;
          _opacity = 1.0;
        });
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final scrollController = Provider.of<ScrollProvider>(context).controller;
    scrollController.addListener(() {
      if(scrollController.offset >= AppSize.homeStartOffset! && scrollController.offset < AppSize.homeOffset!) {
        if(mounted) {
          setState(() {
            _offset = Offset.zero;
            _opacity = 1.0;
          });
        }
      } else {
        if(mounted) {
          setState(() {
            _offset = const Offset(-0.1, 0);
            _opacity = 0.0;
          });
        }
      }
    });

    return AnimatedSlide(
      offset: _offset,
      duration: const Duration(milliseconds: 500),
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FractionallySizedBox(
              widthFactor: widget.titleWidthFactor,
              child: Text(
                AppStrings.homeTitle!,
                style: AppText.h1b!.copyWith(color: Colors.white),
              ),
            ),
            AppSpace.verticalL!,
            Text(
              AppStrings.homeSubTitle!,
              style: AppText.h2!.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
