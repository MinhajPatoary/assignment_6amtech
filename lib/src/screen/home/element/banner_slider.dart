import 'dart:async';

import 'package:assignment_6amtech/data/banner_model.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  PageController _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.8,
  );
  int _currentPage = 1;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    setState(() {
      _pageController.dispose();
    });
  }

  _onpageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          child: PageView.builder(
            onPageChanged: _onpageChanged,
            controller:
                //  PageController( initialPage: _currentPage, viewportFraction: 0.8),
                _pageController,
            itemCount: bannerSliderImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: paddingHorizontal,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(bannerSliderImages[index].bannerImage),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              bannerSliderImages.length,
              (index) => Dots(
                isActive: _currentPage == index ? true : false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Dots extends StatelessWidget {
  final bool isActive;
  const Dots({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      // height: 8,
      height: isActive ? 7.5 : 5,
      // width: isActive ? 22 : 8,
      width: isActive ? 7.5 : 5,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isActive ? primarySwatch : hintTextColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
