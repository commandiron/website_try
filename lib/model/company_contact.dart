import '../helper/constants.dart';

class CompanyContact {
  String url;
  String imagePath;

  CompanyContact(
    {
      required this.url,
      required this.imagePath,
    }
  );

  static List<CompanyContact> companyContacts = [
    CompanyContact(
      url: companyInstagramUrl,
      imagePath: "assets/images/instagram_icon_26.png",
    ),
    CompanyContact(
      url: companyWhatsappUrl,
      imagePath: "assets/images/whatsapp_icon_26.png",
    ),
  ];
}