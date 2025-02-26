import 'package:flutter/material.dart';
import 'package:mail_mind_extension/core/utils/app_assets.dart';

class BackgroundImageWithGradient extends StatelessWidget {
  final double opacityRight;
  final double opacityLeft;
  final double? height;
  final double? width;

  const BackgroundImageWithGradient({
    super.key,
    this.opacityRight = 0.7,
    this.opacityLeft = 0.3,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AssetsData.thumbImage3,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),

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
    );
  }
}
