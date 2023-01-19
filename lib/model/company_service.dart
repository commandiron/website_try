class CompanyService {
  String title;
  String logoAssetPath;

  CompanyService(
      {
        required this.title,
        required this.logoAssetPath,
      }
      );

  static List<CompanyService> companyServices = [
    CompanyService(
        logoAssetPath: "assets/images/design_development_icon_512.png",
        title: "Design & Development"
    ),
    CompanyService(
        logoAssetPath: "assets/images/smart_construction_icon_512.png",
        title: "Akıll İnşaat Uygulamaları"
    ),
  ];
}