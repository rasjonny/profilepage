import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:profilepage/model/user.dart';
import 'package:profilepage/utilis/user_preference.dart';
import 'package:profilepage/utilis/wigdet/appbar_widget.dart';
import 'package:profilepage/widget/profile_widget.dart';
import 'package:profilepage/widget/text_field_widget.dart';

class ProfileEdittingPage extends StatefulWidget {
  const ProfileEdittingPage({super.key});

  @override
  State<ProfileEdittingPage> createState() => _ProfileEdittingPageState();
}

class _ProfileEdittingPageState extends State<ProfileEdittingPage> {
  User user = UserPreference.myUser;
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          physics: const BouncingScrollPhysics(),
          children: [
            Center(
              child: ProfileWidget(
                isEdit: true,
                onClicked: () {},
                imagePath: user.path,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
                label: 'FullName', text: user.name, onChanged: ((name) {})),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: ((email) {}),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              maxLines: 5,
              label: 'About',
              text: user.about,
              onChanged: ((about) {}),
            )
          ],
        ),
      ),
    );
  }
}
