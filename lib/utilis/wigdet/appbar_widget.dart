import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:profilepage/themes.dart';

AppBar buildAppBar(BuildContext context) {
  const icons = CupertinoIcons.moon_stars;
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
            onPressed: () {
              final theme =
                  isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme;
              final themeSwitcher = ThemeSwitcher.of(context);
              themeSwitcher.changeTheme(theme: theme);
            },
            icon: const Icon(
              icons,
              color: Colors.black54,
            )),
      )
    ],
  );
}
