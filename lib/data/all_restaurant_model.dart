import 'package:assignment_6amtech/data/text.dart';

class AllRestaurantModel {
  String storeImage;
  // String foodImage;
  // String foodName;
  String storeName;
  String areaName;
  // String storeType;
  double? rating;
  // int? cutomer;
  // double price;
  int? offerRate;
  bool? isFavourite;

  AllRestaurantModel({
    required this.storeImage,
    // required this.foodImage,
    // required this.foodName,
    required this.storeName,
    required this.areaName,
    // required this.storeType,
    this.rating,
    this.offerRate,
    // this.cutomer,
    this.isFavourite,
    // required this.price,
    // this.offer,
  });
}

List<AllRestaurantModel> allRestaurantList = [
  AllRestaurantModel(
    storeImage:
        "https://1000logos.net/wp-content/uploads/2017/03/symbol-McDonalds.jpg",
    // foodName: "Burger",
    storeName: "Mc Donald",
    areaName: "American cuisine, fast food",
    // storeType: "Fast food",
    rating: 4,

    // cutomer: 10,
    isFavourite: true,

    // price: 100,
    // offer: 30,
  ),
  AllRestaurantModel(
    storeImage:
        "https://cdn.mos.cms.futurecdn.net/8tEvBrHEeMTTBt26SiniHM.jpg",
    // foodName: "Pasta",
    storeName: "Starbuks",
    areaName: "American cuisine, fast food",
    rating: 4.5,
    // storeType: "Fast food",
    offerRate: 20,
    // cutomer: 4,
    // price: 7,
  ),
  AllRestaurantModel(
    storeImage:
        "https://i.pinimg.com/originals/1b/ee/08/1bee08aa56544de70e0c6bffe4a944a4.jpg",
    // foodName: "Pasta",
    storeName: "Dominos",
    areaName: "American cuisine, fast food",
    rating: 5,
    // cutomer: 2,
    // storeType: "Fast food",
    offerRate: 20,
    isFavourite: false,
    // price: 150,
    // offer: 50,
  ),
];
