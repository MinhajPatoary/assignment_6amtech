class CategoryModel {
  String categoryIcon;
  String categoryName;
  CategoryModel({
    required this.categoryIcon,
    required this.categoryName,
  });
}

List<CategoryModel> categoryList = [
  CategoryModel(categoryIcon: "assets/icons/all.png", categoryName: "All"),
  CategoryModel(categoryIcon: "assets/icons/coffee.png", categoryName: "Coffee"),
  CategoryModel(categoryIcon: "assets/icons/drink.png", categoryName: "Drink"),
  CategoryModel(categoryIcon: "assets/icons/fastfood.png", categoryName: "Fast Food"),
  CategoryModel(categoryIcon: "assets/icons/cake.png", categoryName: "Cake"),
  CategoryModel(categoryIcon: "assets/icons/sushi.png", categoryName: "Sushi"),
];
