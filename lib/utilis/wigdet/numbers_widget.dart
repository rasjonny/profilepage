import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buttonBuilder(
              context: context,
              value: '4.8',
              text: 'Rating',
            ),
            buildDivider(),
            buttonBuilder(
              context: context,
              value: '50',
              text: 'Following',
            ),
            buildDivider(),
            buttonBuilder(
              context: context,
              value: '4000',
              text: 'Followers',
            ),
          ],
        ),
      );
  Widget buildDivider() => const VerticalDivider();
  Widget buttonBuilder({
    required BuildContext context,
    required String value,
    required String text,
  }) {
    return MaterialButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
