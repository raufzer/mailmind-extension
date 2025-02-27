import 'package:flutter/material.dart';

class BackgroundImageWithGradient extends StatelessWidget {
  final double opacityRight;
  final double opacityLeft;
  final double? height;
  final double? width;
  final String? image;
  final double radius;

  const BackgroundImageWithGradient({
    super.key,
    this.opacityRight = 0.0,
    this.opacityLeft = 0.0,
    this.height,
    this.width,
    this.image,
    this.radius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(image!, fit: BoxFit.cover, alignment: Alignment.center),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Colors.black.withOpacity(opacityRight),
                    Colors.black.withOpacity(opacityLeft),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
