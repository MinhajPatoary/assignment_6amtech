class FoodCampaignModel {
  String foodImage;
  String foodName;
  String storeName;
  String areaName;
  double? rating;
  double price;
  double? offer;

  FoodCampaignModel({
    required this.foodImage,
    required this.foodName,
    required this.storeName,
    required this.areaName,
    this.rating,
    required this.price,
    this.offer,
  });
}

List<FoodCampaignModel> foodCampaignList = [
  FoodCampaignModel(
    foodImage:
        "https://lh3.googleusercontent.com/proxy/JnT_tsm_BgiVT08egCznX1D7rGcw79Wh08giK4dwQIUPLS8dwhNDjoGNqagw2JdQiqwgLIggDbJ_Th1nt9p00PyFxUI9--KzigCpkOhXfVz3BSqPTdi9jAF6NRuIeNvfb7Fi2YUON2BPKrln9bcF1r-sXA",
    foodName: "Burger",
    storeName: "Mc Donald",
    areaName: "New york, USA",
    rating: 4,
    price: 100,
    offer: 30,
  ),
  FoodCampaignModel(
    foodImage:
        "https://pbs.twimg.com/media/EL92anzW4AECO1H.jpg",
    foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: "New york, USA",
    rating: 4.5,
    price: 7,
  ),
  FoodCampaignModel(
    foodImage:
        "https://cdn.crello.com/common/e55cff88-d80e-4d87-9048-abd3f7656f93_1024.jpg",
    foodName: "Pasta",
    storeName: "Mc Donald",
    areaName: "New york, USA",
    rating: 5,
    price: 150,
    offer: 50,
  ),
];
