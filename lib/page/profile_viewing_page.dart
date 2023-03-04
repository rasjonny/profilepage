import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:profilepage/model/user.dart';
import 'package:profilepage/page/profile_editting_page.dart';
import 'package:profilepage/utilis/user_preference.dart';
import 'package:profilepage/utilis/wigdet/appbar_widget.dart';
import 'package:profilepage/utilis/wigdet/numbers_widget.dart';
import 'package:profilepage/widget/button_widget.dart';
import 'package:profilepage/widget/profile_widget.dart';

class ProfileViewingPage extends StatefulWidget {
  const ProfileViewingPage({super.key});

  @override
  State<ProfileViewingPage> createState() => _ProfileViewingPageState();
}

class _ProfileViewingPageState extends State<ProfileViewingPage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreference.myUser;
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Center(
              child: ProfileWidget(
                imagePath: user.path,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ProfileEdittingPage(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            buildName(user),
            const SizedBox(
              height: 24,
            ),
            Center(child: upgradeButton(onClicked: () {}, text: 'Upgrade Pro')),
            const SizedBox(
              height: 24,
            ),
            const NumbersWidget(),
            const SizedBox(
              height: 24,
            ),
            buildAbout(user),
          ],
        ),
      ),
    );
  }

  Widget buildAbout(User user) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              user.about,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            )
          ],
        ),
      );
  Widget upgradeButton({
    required VoidCallback onClicked,
    required String text,
  }) {
    return ButtonWidget(
      onClicked: onClicked,
      text: text,
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            user.email,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      );
}
