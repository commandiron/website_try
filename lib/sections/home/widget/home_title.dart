import 'package:flutter/material.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text.dart';

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
      (timeStamp) {
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
    return AnimatedSlide(
      offset: _offset,
      duration: Duration(milliseconds: 500),
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(milliseconds: 1000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FractionallySizedBox(
              widthFactor: widget.titleWidthFactor,
              child: Text(
                "İnşaat sektöründe mobil tabanlı teknoloji çözümleri sunuyoruz.",
                style: AppText.h1b!.copyWith(color: Colors.white),
              ),
            ),
            AppSpace.verticalL!,
            Text(
              "Uçtan uca tüm inşaat sektörünün inovasyonu için gelin beraber çalışalım.",
              style: AppText.h2!.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
