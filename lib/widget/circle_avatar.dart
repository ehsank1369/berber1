import 'package:flutter/material.dart';

Widget CircleImage(
    {double? height, double? width, double? maxRadius, String? imageName}) {
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.all(
        Radius.circular(82),
      ),
    ),
    child: CircleAvatar(
      maxRadius: maxRadius,
      backgroundImage: AssetImage(
        'assets/images/${imageName}.png',
      ),
    ),
  );
}
