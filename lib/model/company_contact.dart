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
      url: "https://instagram.com/emirdemirli/",
      imagePath: "assets/images/instagram_icon_26.png",
    ),
    CompanyContact(
      url: "https://facebook.com/emirdemirli",
      imagePath: "assets/images/facebook_icon_512.png",
    ),
    CompanyContact(
      url: "https://api.whatsapp.com/send?phone=905355085552",
      imagePath: "assets/images/whatsapp_icon_26.png",
    ),
  ];
}