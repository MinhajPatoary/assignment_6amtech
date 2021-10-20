import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double? ratingValue;
  final int lenth;
  final Color? color;
  final double? size;

  const RatingBar(
      {Key? key, this.ratingValue, this.color, this.size, this.lenth = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* print("ratingValue ==== > ${ratingValue == null ? null : ratingValue!}");
    print(
        "ratingValue.toInt() ==== > ${ratingValue == null ? null : ratingValue!.toInt()}");
    print(
        "ratingValue.length ==== > ${ratingValue == null ? 0 : ratingValue.toString().length}");
    print(
        ".split('.')[1]) ==== > ${ratingValue == null || ratingValue.toString().length == 1 ? null : int.tryParse(ratingValue.toString().split('.')[1])!} ");
    */
    return Row(
      children: [
        //Rating value null or 0 and .0 and 0.0 and < 0.3 output
        if (ratingValue == null ||
            (ratingValue!.toInt() == 0 &&
                (ratingValue.toString().length == 1
                        ? 0
                        : int.tryParse(ratingValue.toString().split('.')[1])!) <
                    3))
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: Icons.star_border_rounded,
            )
        /* if (ratingValue == null ||
            (ratingValue!.toInt() == 0 &&
                int.tryParse(ratingValue.toString().split('.')[1])! < 3))
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: Icons.star_border_rounded,
            ) */

        //Rating value  >= 0.3 and < 0.8 output
        else if (ratingValue!.toInt() == 0 &&
            ((ratingValue.toString().length == 1
                        ? 0
                        : int.tryParse(
                            ratingValue.toString().split('.')[1])!) >=
                    3 &&
                (ratingValue.toString().length == 1
                        ? 0
                        : int.tryParse(ratingValue.toString().split('.')[1])!) <
                    8))
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata:
                  i < 1 ? Icons.star_half_rounded : Icons.star_border_rounded,
            )
        /* else if (ratingValue!.toInt() == 0 &&
            (int.tryParse(ratingValue.toString().split('.')[1])! >= 3 &&
                int.tryParse(ratingValue.toString().split('.')[1])! < 8))
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata:
                  i < 1 ? Icons.star_half_rounded : Icons.star_border_rounded,
            ) */

        //Rating value  >= 0.8 to 0.9 output
        else if (ratingValue!.toInt() == 0 &&
            (ratingValue.toString().length == 1
                    ? 0
                    : int.tryParse(ratingValue.toString().split('.')[1])!) >=
                8)
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < 1 ? Icons.star_rounded : Icons.star_border_rounded,
            )
        /* else if (ratingValue!.toInt() == 0 &&
            int.tryParse(ratingValue.toString().split('.')[1])! >= 8)
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < 1 ? Icons.star_rounded : Icons.star_border_rounded,
            ) */

        //Rating value 1 or 1.0 or > 1.3 to n.3 output
        else if (ratingValue!.toInt() > 0 &&
            (ratingValue.toString().length == 1
                    ? 0
                    : int.tryParse(ratingValue.toString().split('.')[1])!) <
                3)
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < ratingValue!.toInt()
                  ? Icons.star_rounded
                  : Icons.star_border_rounded,
            )
        /* else if (ratingValue!.toInt() > 0 &&
            int.tryParse(ratingValue.toString().split('.')[1])! < 3)
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < ratingValue!.toInt()
                  ? Icons.star_rounded
                  : Icons.star_border_rounded,
            ) */

        //Rating value  <= 1.3 and > 1.8 or 1.3 and > n.8 output
        else if (ratingValue!.toInt() > 0 &&
            ((ratingValue.toString().length == 1
                        ? 0
                        : int.tryParse(
                            ratingValue.toString().split('.')[1])!) >=
                    3 &&
                (ratingValue.toString().length == 1
                        ? 0
                        : int.tryParse(ratingValue.toString().split('.')[1])!) <
                    8))
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < ratingValue!.toInt()
                  ? Icons.star_rounded
                  : i == ratingValue!.toInt()
                      ? Icons.star_half_rounded
                      : Icons.star_border_rounded,
            )
        /* else if (ratingValue!.toInt() > 0 &&
            (int.tryParse(ratingValue.toString().split('.')[1])! >= 3 &&
                int.tryParse(ratingValue.toString().split('.')[1])! < 8))
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < ratingValue!.toInt()
                  ? Icons.star_rounded
                  : i == ratingValue!.toInt()
                      ? Icons.star_half_rounded
                      : Icons.star_border_rounded,
            ) */
        //Rating value >= 1.8 output
        else if (ratingValue!.toInt() > 0 &&
            (ratingValue.toString().length == 1
                    ? 0
                    : int.tryParse(ratingValue.toString().split('.')[1])!) >=
                8)
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < ratingValue!.toInt()
                  ? Icons.star_rounded
                  : i == ratingValue!.toInt()
                      ? Icons.star_rounded
                      : Icons.star_border_rounded,
            )
        /* else if (ratingValue!.toInt() > 0 &&
            int.tryParse(ratingValue.toString().split('.')[1])! >= 8)
          for (var i = 0; i < lenth; i++)
            ratingIcon(
              icondata: i < ratingValue!.toInt()
                  ? Icons.star_rounded
                  : i == ratingValue!.toInt()
                      ? Icons.star_rounded
                      : Icons.star_border_rounded,
            ) */

        // populerFoodNearbyList[index].rating!.toInt()
        // int.tryParse(populerFoodNearbyList[index].rating!.toString().split('.')[1]);
      ],
    );
  }

  Icon ratingIcon({required IconData icondata}) {
    return Icon(
      icondata,
      color: color,
      size: size,
    );
  }
}

/* 
class RatingIcon extends StatelessWidget {
  const RatingIcon({
    Key? key,
    required this.icondata,
    required this.ratingValue,
    required this.color,
    required this.size,
  }) : super(key: key);

  final IconData icondata;
  final double? ratingValue;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icondata,
      color: color,
      size: size,
    );
  }
}
 */