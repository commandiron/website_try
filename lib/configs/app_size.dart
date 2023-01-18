class AppSize {
  static double? logoWidth;
  static double? navBarSize;
  static double? bodyDividerHeight;
  static double? homeSectionHeight;
  static double? homeStartOffset;
  static double? homeEndOffset;
  static double? homeOffset;
  static double? productsSectionHeight;
  static double? productsStartOffset;
  static double? productsEndOffset;
  static double? productsOffset;
  static double? servicesSectionHeight;
  static double? aboutSectionHeight;
  static double? contactSectionHeight;

  static void init() {
    logoWidth = 256;
    navBarSize = 96;
    bodyDividerHeight = 2;

    homeSectionHeight = 960;
    homeStartOffset = 0;
    homeEndOffset = homeStartOffset! + homeSectionHeight!;
    homeOffset = (homeStartOffset! +  homeEndOffset!) / 2;

    productsSectionHeight = 960;
    productsStartOffset = homeEndOffset;
    productsEndOffset = productsStartOffset! + productsSectionHeight!;
    productsOffset = (productsStartOffset! +  productsEndOffset!) / 2;

    servicesSectionHeight = 720;

    aboutSectionHeight = 960;

    contactSectionHeight = 960;
  }
}
