import 'package:assignment_6amtech/data/text.dart';
import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.home_rounded,
            color: hintIconColor,
            size: 15,
          ),
          const SizedBox(width: 2.5),
          Text(
            topBarLocation,
            style: hintTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.notifications_rounded,
            color: contentColor,
            size: 20,
          )
        ],
      ),
    );
  }
}
