import 'package:flutter/material.dart';

Widget starRating({double value = 0}) {
  Color mc = Colors.amber;
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: List.generate(5, (index) {
      return index < value
          ? Icon(
              Icons.star,
              color: mc,
            )
          : Icon(
              Icons.star_border,
              color: mc,
            );
    }),
  );
}
