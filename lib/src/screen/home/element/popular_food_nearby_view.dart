import 'package:assignment_6amtech/data/populer_food_nearby_model.dart';
import 'package:assignment_6amtech/data/text.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/element/ratingbar.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class PopularFoodNearbyView extends StatelessWidget {
  const PopularFoodNearbyView({Key? key}) : super(key: key);
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
                popularFoodNearby,
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
          height: 100,
          // color: Colors.amberAccent,
          color: backgroundColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: populerFoodNearbyList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 80,
                      width: 200,
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: contentBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: boxshadow,
                      ),
                      child: Stack(
                        // alignment: Alignment.centerLeft,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 5),
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        populerFoodNearbyList[index].foodImage),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    populerFoodNearbyList[index].foodName,
                                    style: textStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  RichText(
                                    text: TextSpan(
                                        text: populerFoodNearbyList[index]
                                            .storeName,
                                        style: hintIconTextStyle.copyWith(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: ", ",
                                            style: hintIconTextStyle.copyWith(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: populerFoodNearbyList[index]
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
                                        populerFoodNearbyList[index].rating,
                                    color: primarySwatch,
                                    size: 8,
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$${offerPrice(populerFoodNearbyList[index].price, populerFoodNearbyList[index].offer ?? 0)}",
                                        style: textStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      populerFoodNearbyList[index].offer != null
                                          ? Text(
                                              "\$${populerFoodNearbyList[index].price}",
                                              style: hintTextStyle.copyWith(
                                                fontSize: 8,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            )
                                          : const SizedBox(),
                                    ],
                                  ),
                                  const SizedBox(height: 7.5),
                                ],
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
