import 'package:flutter/material.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({required this.titleWidthFactor, super.key});

  final double titleWidthFactor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FractionallySizedBox(
          widthFactor: titleWidthFactor,
          child: Text(
            "İnşaat sektöründe mobil tabanlı teknoloji çözümleri sunuyoruz.",
            style: AppText.h1b!.copyWith(color: Colors.white),
          ),
        ),
        AppSpace.yLarge!,
        Text(
          "Uçtan uca tüm inşaat sektörünün otomasyonu için gelin beraber çalışalım.",
          style: AppText.h2!.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
