import 'package:assignment_6amtech/data/all_restaurant_model.dart';
import 'package:assignment_6amtech/data/text.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/element/ratingbar.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class AllRestaurantsView extends StatefulWidget {
  const AllRestaurantsView({Key? key}) : super(key: key);

  @override
  _AllRestaurantsViewState createState() => _AllRestaurantsViewState();
}

class _AllRestaurantsViewState extends State<AllRestaurantsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingHorizontal,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    allRestaurants,
                    style: textStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "${(allRestaurantList.length - 1).toString()}+ Near you",
                    style: hintTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.tune_rounded,
                size: 20,
                color: contentColor,
              ),
            ],
          ),
          Container(
            height: 100.0 * allRestaurantList.length,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: allRestaurantList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  // color: Colors.amberAccent,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: index == allRestaurantList.length - 1
                          ? BorderSide.none
                          : BorderSide(color: hintTextColor, width: 0.5),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                allRestaurantList[index].storeImage),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: paddingHorizontal,
                          // padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                allRestaurantList[index].storeName,
                                style: textStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${allRestaurantList[index].areaName.split(',')[0]},\n${allRestaurantList[index].areaName.split(', ')[1]} ",
                                    style: hintTextStyle.copyWith(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border_rounded,
                                    size: 18,
                                    color: hintTextColor,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              RatingBar(
                                ratingValue: allRestaurantList[index].rating,
                                color: primarySwatch,
                                size: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
