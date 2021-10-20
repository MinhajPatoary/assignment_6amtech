import 'package:assignment_6amtech/data/food_campaign_model.dart';
import 'package:assignment_6amtech/data/text.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/element/ratingbar.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class FoodCampaignView extends StatelessWidget {
  const FoodCampaignView({Key? key}) : super(key: key);
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
                foodCampaign,
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
          height: 225,
          // color: Colors.amberAccent,
          color: backgroundColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodCampaignList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 205,
                      width: 170,
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
                                height: 130,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        foodCampaignList[index].foodImage),
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
                                        foodCampaignList[index].foodName,
                                        style: textStyle.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      RichText(
                                        text: TextSpan(
                                            text: foodCampaignList[index]
                                                .storeName,
                                            style: hintIconTextStyle.copyWith(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: ", ",
                                                style:
                                                    hintIconTextStyle.copyWith(
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
                                            ]),
                                      ),
                                      const SizedBox(height: 2.5),
                                      RatingBar(
                                        ratingValue:
                                            foodCampaignList[index].rating,
                                        color: primarySwatch,
                                        size: 8,
                                      ),
                                      const SizedBox(height: 5),
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
                                      ),
                                      const SizedBox(height: 7.5),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          /* offerRate(
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
                                    padding: EdgeInsets.all(2.5),
                                    decoration: BoxDecoration(
                                      color: offerColor,
                                      borderRadius: BorderRadius.only(
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
                              : SizedBox(), */
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: Icon(
                              Icons.add_rounded,
                              size: 20,
                              color: contentColor,
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
