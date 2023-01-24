class CompanyProduct {
  String logoAssetPath;
  String name;
  String shortDescription;
  String fullDescription;
  String imageAssetPath;

  CompanyProduct(
    {
      required this.logoAssetPath,
      required this.name,
      required this.shortDescription,
      required this.fullDescription,
      required this.imageAssetPath
    }
  );

  static List<CompanyProduct> items = [
    CompanyProduct(
      logoAssetPath: "assets/images/product/konut_maliyet/beson_logo.png",
      name: "Kost - Konut",
      shortDescription: "",
      fullDescription: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. \n \nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
      imageAssetPath: "assets/images/product/konut_maliyet/example_cover_for_demirli_tech.png"
    ),
    CompanyProduct(
        logoAssetPath: "assets/images/product/konut_plan/sefim_logo.png",
        name: "Şefim Copilot",
        shortDescription: "",
        fullDescription: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. \n \nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
        imageAssetPath: "assets/images/product/konut_maliyet/example_cover_for_demirli_tech.png"
    ),
  ];
}