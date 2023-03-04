import 'package:flutter/material.dart';
import 'package:profilepage/model/user.dart';
import 'package:profilepage/utilis/user_preference.dart';
import 'package:profilepage/utilis/wigdet/appbar_widget.dart';
import 'package:profilepage/utilis/wigdet/numbers_widget.dart';
import 'package:profilepage/widget/button_widget.dart';
import 'package:profilepage/widget/profile_widget.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreference.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Center(
            child: ProfileWidget(
              imagePath: user.path,
              onClicked: () async {},
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(user),
          const SizedBox(height: 24,),
          Center(child: upgradeButton(onClicked: (){}, text: 'Upgrade Pro')),
          const SizedBox(
            height: 24,
          ),
       const   NumbersWidget()],
      ),
    );
  }

  Widget upgradeButton({
    required VoidCallback onClicked,
    required String text,
  }) {
    return ButtonWidget(onClicked: onClicked,text: text,);
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
