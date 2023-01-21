
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:flutter/material.dart';
import '../../configs/app_text.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.servicesSectionHeight,
      color: Theme.of(context).colorScheme.primaryContainer,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text(
              "Hakkımızda",
              style: AppText.h1?.copyWith(color: Colors.white)
            ),
          ),
          Row(
            children: [
              AppSpace.horizontalExpanded!,
              Expanded(
                flex: 3,
                child: Text(
                  "Demirli Tech, 2023 yılında inşaat sektörüne yönelik mobil uygulamalar üreten, "
                  "teknolojik fırsatların ve yapay zeka ile ilgili gelişmelerin "
                  "sektör tarafından kullanılabilmesi için inovatif araçlar geliştiren "
                  "bir şirket olarak kurulmuştur. "
                  "\n"
                  "\nBiz, özellikle küçük ve orta ölçekli sektör temsilcilerine ve sektörün müşterilerine yönelik "
                  "tüm bilgi ve araçları kolayca erişebilmelerini sağlamak amacıyla, "
                  "kullanıcı dostu ve çok yönlü uygulamalar geliştiriyoruz. "
                  "\n"
                  "\nMisyonumuz, sektörde verimliliği artırmak ve iş süreçlerini kolaylaştırmaktır. "
                  "Bunu yaparken, kullanıcıların gerçek ihtiyaçlarını anlamak ve onların beklentilerini karşılamak için "
                  "sürekli olarak araştırma ve geliştirme yapıyoruz.",
                  style: AppText.b1?.copyWith(color: Colors.white),
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 500,
                  child: Image.asset(
                    "assets/images/demirli_tech_logo_with_text.png"
                  ),
                )
              ),
              AppSpace.horizontalExpanded!,
            ],
          )
        ],
      ),
    );
  }
}
