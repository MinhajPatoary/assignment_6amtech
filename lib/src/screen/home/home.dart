import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:assignment_6amtech/src/screen/home/element/all_restaurants_view.dart';
import 'package:assignment_6amtech/src/screen/home/element/food_campaign_view.dart';
import 'package:assignment_6amtech/src/screen/home/element/new_on_app_name_view.dart';
import 'package:assignment_6amtech/src/screen/home/element/popular_food_nearby_view.dart';
import 'package:assignment_6amtech/src/screen/home/element/popular_restayrants_view.dart';
import 'package:flutter/material.dart';
import 'element/banner_slider.dart';
import 'element/categories_view.dart';
import 'element/searchbar.dart';
import 'element/topbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height(context),
        width: width(context),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                //
                SizedBox(height: 15),
                TopBar(),
                SizedBox(height: 20),
                SearchBar(),
                SizedBox(height: 20),
                BannerSlider(),
                SizedBox(height: 15),
                CategoriesView(),
                SizedBox(height: 15),
                PopularFoodNearbyView(),
                SizedBox(height: 15),
                FoodCampaignView(),
                SizedBox(height: 15),
                PopularRestaurantsView(),
                SizedBox(height: 15),
                NewOnAppNameView(),
                SizedBox(height: 15),
                AllRestaurantsView(),
                // SizedBox(height: 15),
                //
              ],
            ),
          ),
        ),
      )
    ;
  }
}
