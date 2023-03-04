import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: IntrinsicHeight(
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
        ),
      );
  Widget buildDivider() => const SizedBox(height: 25, child: VerticalDivider());
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
