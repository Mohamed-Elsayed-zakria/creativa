class CategoryModel {
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  CategoryModel({
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
      );
}


