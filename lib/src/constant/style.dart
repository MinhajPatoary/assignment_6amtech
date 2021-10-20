import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:flutter/cupertino.dart';

//
Size size(BuildContext context) => MediaQuery.of(context).size;
double height(BuildContext context) => size(context).height;
double width(BuildContext context) => size(context).width;
//
EdgeInsetsGeometry padding =
    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0);
EdgeInsetsGeometry paddingHorizontal =
    const EdgeInsets.symmetric(horizontal: 15.0);
EdgeInsetsGeometry paddingVertical = const EdgeInsets.symmetric(vertical: 10.0);
//
TextStyle textStyle = TextStyle(
  fontFamily: "Roboto",
  color: contentColor,
  fontWeight: FontWeight.w500,
);

TextStyle hintTextStyle = TextStyle(
  fontFamily: "Roboto",
  color: hintTextColor,
  // fontWeight: FontWeight.w500,
);

TextStyle hintIconTextStyle = TextStyle(
  fontFamily: "Roboto",
  color: hintIconColor,
  fontWeight: FontWeight.w500,
);
TextStyle linkTextStyle = TextStyle(
  fontFamily: "Roboto",
  color: primarySwatch,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  decoration: TextDecoration.underline,
);

List<BoxShadow> largeBoxshadow = [
  BoxShadow(
    color: hintTextColor.withOpacity(0.25),
    spreadRadius: 5,
    blurRadius: 25,
    // offset: const Offset(0, 2.5), 
  ),
];

List<BoxShadow> boxshadow = [
  BoxShadow(
    color: hintTextColor.withOpacity(0.25),
    spreadRadius: 2.5,
    blurRadius: 10.0,
    // offset: const Offset(0, 2.5),
  ),
];
