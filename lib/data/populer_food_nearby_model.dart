class PopulerFoodNearbyModel {
  String foodImage;
  String foodName;
  String storeName;
  String areaName;
  double? rating;
  double price;
  double? offer;

  PopulerFoodNearbyModel({
    required this.foodImage,
    required this.foodName,
    required this.storeName,
    required this.areaName,
    this.rating,
    required this.price,
    this.offer,
  });
}

List<PopulerFoodNearbyModel> populerFoodNearbyList = [
  PopulerFoodNearbyModel(
    foodImage:
        "https://image.freepik.com/free-photo/delicious-cheeseburger_1232-503.jpg",
    foodName: "Burger",
    storeName: "Mc Donald",
    areaName: "New york, USA",
    rating: 5,
    price: 50,
    offer: 30,
  ),
  PopulerFoodNearbyModel(
    foodImage:
        "https://image.freepik.com/free-photo/lifestyle-cocina-comida-foodie-gastronomy_1350-45.jpg",
    foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: "New york, USA",
    rating: 4.5,
    price: 7,
  ),
  PopulerFoodNearbyModel(
    foodImage:
        "https://image.freepik.com/free-photo/side-view-penne-pasta-with-tomato-sauce-greens-plate_141793-5043.jpg",
    foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: "New york, USA",
    rating: 4,
    price: 150,
    offer: 50,
  ),
];
