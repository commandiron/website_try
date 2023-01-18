class VisionCategory {
  String title;

  VisionCategory(
    {
      required this.title,
    }
  );


  static List<VisionCategory> visionCategories = [
    VisionCategory(
      title: "Fizibilite"
    ),
    VisionCategory(
        title: "Tasarım"
    ),
    VisionCategory(
        title: "Uygulama"
    ),
    VisionCategory(
        title: "Kontrol"
    ),
    VisionCategory(
        title: "Bakım"
    ),
  ];
}