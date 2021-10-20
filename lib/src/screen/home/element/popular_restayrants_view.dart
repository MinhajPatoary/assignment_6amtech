import 'package:assignment_6amtech/data/popular_restaurant_model.dart';
import 'package:assignment_6amtech/data/populer_food_nearby_model.dart';
import 'package:assignment_6amtech/data/text.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/element/ratingbar.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class PopularRestaurantsView extends StatelessWidget {
  const PopularRestaurantsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: paddingHorizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                popularRestaurants,
                style: textStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                viewall,
                style: linkTextStyle,
              ),
            ],
          ),
        ),
        // SizedBox(height: 10),
        Container(
          height: 245,
          // color: Colors.amberAccent,
          color: backgroundColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: popularRestaurantList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 300,
                      height: 225,

                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: contentBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: boxshadow,
                      ),
                      child: Stack(
                        // alignment: Alignment.centerLeft,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // const SizedBox(width: 5),
                              Container(
                                width: 300,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        popularRestaurantList[index]
                                            .storeImage),
                                  ),
                                ),
                              ),
                              // const SizedBox(height: 10),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        popularRestaurantList[index].storeName,
                                        style: textStyle.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 7.5),
                                      RichText(
                                        text: TextSpan(
                                          text: popularRestaurantList[index]
                                              .areaName,
                                          style: hintTextStyle.copyWith(
                                            fontSize: 12,
                                            // fontWeight: FontWeight.w400,
                                          ), /* 
                                          children: [
                                            TextSpan(
                                              text: ", ",
                                              style: hintIconTextStyle.copyWith(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: foodCampaignList[index]
                                                  .areaName,
                                              style: hintTextStyle.copyWith(
                                                fontSize: 8,
                                              ),
                                            )
                                          ], */
                                        ),
                                      ),
                                      const SizedBox(height: 7.5),
                                      Row(
                                        children: [
                                          RatingBar(
                                            ratingValue:
                                                popularRestaurantList[index]
                                                    .rating,
                                            color: primarySwatch,
                                            size: 10,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            "(${popularRestaurantList[index].cutomer.toString()})",
                                            style: hintTextStyle.copyWith(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                      /* const SizedBox(height: 5),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "\$${offerPrice(foodCampaignList[index].price, foodCampaignList[index].offer ?? 0)}",
                                            style: textStyle.copyWith(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          foodCampaignList[index].offer != null
                                              ? Text(
                                                  "\$${foodCampaignList[index].price}",
                                                  style: hintTextStyle.copyWith(
                                                    fontSize: 8,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                                )
                                              : const SizedBox(),
                                        ],
                                      ), */
                                      const SizedBox(height: 7.5),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          offerRate(
                                      populerFoodNearbyList[index].price,
                                      populerFoodNearbyList[index].offer ??
                                          0)! >
                                  0
                              ? Positioned(
                                  top: 20,
                                  // left: 0,
                                  // right: 0,
                                  child: Container(
                                    // height: 18,
                                    // width: 31,
                                    padding: const EdgeInsets.all(2.5),
                                    decoration: BoxDecoration(
                                      color: offerColor,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(2.5),
                                        bottomRight: Radius.circular(2.5),
                                      ),
                                    ),
                                    child: Text(
                                      "${offerRate(populerFoodNearbyList[index].price, populerFoodNearbyList[index].offer ?? 0)}% off",
                                      style: textStyle.copyWith(
                                        color: contentBackgroundColor,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          Positioned(
                            top: 10,
                            right: 10,
                            // bottom: 5,
                            child: Container(
                              padding: const EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                color: contentBackgroundColor,
                                borderRadius: BorderRadius.circular(2.5),
                              ),
                              child: Icon(
                                Icons.favorite_rounded,
                                size: 12,
                                color: primarySwatch,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(height: 10),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  int? offerPrice(double price, double offer) {
    return (price - offer).isNegative ? 0 : (price - offer).toInt();
  }

  int? offerRate(double price, double offer) {
    return (offer * 100 / price).isNegative ? 0 : offer * 100 ~/ price;
  }
}
