import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    this.isEdit=false,
    required this.onClicked,
    required this.imagePath,
  });
  final bool isEdit;
  final VoidCallback onClicked;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Stack(children: [
      buildImage(),
      Positioned(bottom: 0, right: 4, child: edittingIcon(color))
    ]);
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          height: 128,
          width: 128,
          child: InkWell(
            onTap: onClicked,
          ),
        ),
      ),
    );
  }

  Widget edittingIcon(Color color) => buildCircle(
      color: Colors.white,
      all: 3,
      child: buildCircle(
          color: color,
          all: 8,
          child: 
           Icon( isEdit ?Icons.image_search_outlined:
            Icons.edit,
            color: Colors.white,
            size: 20,
          )));

  Widget buildCircle({
    required double all,
    required Color color,
    required Widget child,
  }) {
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        color: color,
        child: child,
      ),
    );
  }
}
