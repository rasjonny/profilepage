import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'package:profilepage/page/profile_viewing_page.dart';
import 'package:profilepage/themes.dart';
import 'package:profilepage/utilis/user_preference.dart';

void main() {
  const user = UserPreference.myUser;
  runApp(
    ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      builder: (context, theme) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: const ProfileViewingPage(),
        );
      },
    ),
  );
}
