import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mind_extension/core/shared/widgets/app_bar.dart';
import 'package:mail_mind_extension/core/shared/widgets/background_image_with_gradient.dart';
import 'package:mail_mind_extension/core/shared/widgets/headline_one.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';
import 'package:mail_mind_extension/core/utils/app_assets.dart';
import 'package:mail_mind_extension/features/main/presentation/views/widgets/custom_text_button.dart';
import 'package:mail_mind_extension/features/main/presentation/views/widgets/generate_input.dart';
import 'package:mail_mind_extension/features/main/presentation/views/widgets/feature_item.dart';

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (MediaQuery.of(context).size.width - 556.r) / 2,
        ),
        child: Column(
          children: [
            SizedBox(height: 28.r),
            SizedBox(
              height: 480.r,
              width: 556.r,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: BackgroundImageWithGradient(
                      image: AssetsData.thumbImage2,
                      radius: 12.r,
                      opacityRight: 0.4.r,
                      opacityLeft: 0.1.r,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const HeadlineOne(text: "What's your next email?"),
                        SizedBox(height: 8.r),
                        GenerateInput(onGeneratePressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  text: 'Draft',
                  onPressed: () {},
                  color: kSecondaryColor,
                ),
                SizedBox(width: 20.r),
                CustomTextButton(text: 'Send', onPressed: () {}),
              ],
            ),
            SizedBox(height: 8.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Coming Features', style: AppStyles.bodyText3)],
            ),
            SizedBox(height: 16.r),
            FeatureItem(
              imagePath: AssetsData.thumbImage1,
              title: 'Priority Inbox & Urgent Detection',
              description:
                  'AI detects and highlights urgent emails for better prioritization.',
            ),
            SizedBox(height: 16.r),
            FeatureItem(
              imagePath: AssetsData.thumbImage,
              title: 'Email Summarization',
              description:
                  'Summarizes emails into key takeaways for quick insights.',
            ),
          ],
        ),
      ),
    );
  }
}
