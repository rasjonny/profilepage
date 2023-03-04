import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  const icons = CupertinoIcons.moon_stars;
  return AppBar(
    leading: const BackButton(
      color: Colors.black,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            icons,
            color: Colors.black,
          ))
    ],
  );
}
