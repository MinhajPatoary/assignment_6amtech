import 'package:assignment_6amtech/data/text.dart';

class NewOnAppNameModel {
  String storeImage;
  // String foodImage;
  // String foodName;
  String storeName;
  String areaName;
  double? rating;
  int? cutomer;
  // double price;
  // double? offer;
  bool? freeDelivery;

  NewOnAppNameModel({
    required this.storeImage,
    // required this.foodImage,
    // required this.foodName,
    required this.storeName,
    required this.areaName,
    this.rating,
    this.cutomer,
    this.freeDelivery,
    // required this.price,
    // this.offer,
  });
}

List<NewOnAppNameModel> newOnAppNameList = [
  NewOnAppNameModel(
    storeImage:
        "https://image.freepik.com/free-vector/fast-food-realistic-with-fresh-snack-symbols-banner_1284-57191.jpg",
    // foodName: "Burger",
    storeName: "Mc Donald",
    areaName: topBarLocation,
    rating: 4,
    cutomer: 10,
    freeDelivery: true,

    // price: 100,
    // offer: 30,
  ),
  NewOnAppNameModel(
    storeImage:
        "https://image.freepik.com/free-vector/fast-food-black-background-poster_1284-14589.jpg",
    // foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: topBarLocation,
    rating: 4.5,
    cutomer: 4,
    // price: 7,
  ),
  NewOnAppNameModel(
    storeImage:
        "https://image.freepik.com/free-vector/blackboard-food-background_23-2148061712.jpg",
    // foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: topBarLocation,
    rating: 5,
    cutomer: 2,
    freeDelivery: false,
    // price: 150,
    // offer: 50,
  ),
];
