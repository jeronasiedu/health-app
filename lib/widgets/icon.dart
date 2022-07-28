import 'package:flutter/material.dart';

Container MyIcon(IconData iconName) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      shape: BoxShape.circle,
    ),
    child: IconButton(
      onPressed: () {},
      icon: Icon(iconName),
      splashRadius: 25,
    ),
  );
}
