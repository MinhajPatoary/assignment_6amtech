import 'package:assignment_6amtech/data/category_model.dart';
import 'package:assignment_6amtech/data/text.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);
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
                categories,
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
          height: 85,
          color: backgroundColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: contentBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: boxshadow,
                      ),
                      child: Image.asset(categoryList[index].categoryIcon),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    categoryList[index].categoryName,
                    style: textStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
