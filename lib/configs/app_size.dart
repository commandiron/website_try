class AppSize {
  static double? logoWidth;
  static double? navBarHeight;
  static double? bodyDividerHeight;

  static double? homeSectionHeight;
  static double? homeAnimationStartOffset;
  static double? homeAnimationEndOffset;

  static double? productsSectionHeight;
  static double? productsAnimationStartOffset;
  static double? productsAnimationEndOffset;

  static double? servicesSectionHeight;
  static double? servicesAnimationStartOffset;
  static double? servicesAnimationEndOffset;

  static double? aboutSectionHeight;
  static double? aboutAnimationStartOffset;
  static double? aboutAnimationEndOffset;

  static double? contactSectionHeight;

  static void init() {
    logoWidth = 256;
    navBarHeight = 96;
    bodyDividerHeight = 0;

    homeSectionHeight = 960;
    productsSectionHeight = 960;
    servicesSectionHeight = 720;
    aboutSectionHeight = 960;
    contactSectionHeight = 480;

    homeAnimationStartOffset = 0;
    homeAnimationEndOffset = AppSize.homeSectionHeight! +  AppSize.productsSectionHeight!;

    productsAnimationStartOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! / 2;
    productsAnimationEndOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight!;

    servicesAnimationStartOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! / 2;
    servicesAnimationEndOffset =  AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight!;

    aboutAnimationStartOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight! / 2;
    aboutAnimationEndOffset =  AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight! + AppSize.contactSectionHeight!;
  }
}
