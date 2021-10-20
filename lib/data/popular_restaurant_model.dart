import 'package:assignment_6amtech/data/text.dart';

class PopularRestaurantModel {
  String storeImage;
  // String foodImage;
  // String foodName;
  String storeName;
  String areaName;
  double? rating;
  int? cutomer;
  // double price;
  // double? offer;

  PopularRestaurantModel({
    required this.storeImage,
    // required this.foodImage,
    // required this.foodName,
    required this.storeName,
    required this.areaName,
    this.rating,
    this.cutomer,
    // required this.price,
    // this.offer,
  });
}

List<PopularRestaurantModel> popularRestaurantList = [
  PopularRestaurantModel(
    storeImage:
        "https://image.freepik.com/free-psd/flat-lay-free-food-service-arrangement-with-background-mock-up_23-2148421300.jpg",
    // foodName: "Burger",
    storeName: "Mc Donald",
    areaName: topBarLocation,
    rating: 4,
    cutomer: 10,

    // price: 100,
    // offer: 30,
  ),
  PopularRestaurantModel(
    storeImage:
        "https://image.freepik.com/free-photo/restaurant-interior_1127-3394.jpg",
    // foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: topBarLocation,
    rating: 4.5,
    cutomer: 4,
    // price: 7,
  ),
  PopularRestaurantModel(
    storeImage:
        "https://image.freepik.com/free-vector/pizza-menu-chalkboard-background_1284-11715.jpg",
    // foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: topBarLocation,
    rating: 5,
    cutomer: 2,
    // price: 150,
    // offer: 50,
  ),
];
