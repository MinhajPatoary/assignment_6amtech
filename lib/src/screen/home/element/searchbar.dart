import 'package:assignment_6amtech/data/text.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingHorizontal,
      child: Container(
        // shadowColor: ,
        decoration: BoxDecoration(
          color: contentBackgroundColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: largeBoxshadow,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: searchBarText,
                    hintStyle: hintTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.search_sharp,
                color: hintIconColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
