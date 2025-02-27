import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mind_extension/core/shared/widgets/app_bar.dart';
import 'package:mail_mind_extension/core/shared/widgets/custom_switch.dart';
import 'package:mail_mind_extension/core/shared/widgets/custom_text_button.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';
import 'package:mail_mind_extension/core/utils/app_assets.dart';
import 'package:mail_mind_extension/features/settings/presentation/views/widgets/ai_tone_selector.dart';

class SettingsScreenBody extends StatefulWidget {
  const SettingsScreenBody({super.key});

  @override
  State<SettingsScreenBody> createState() => _SettingsScreenBodyState();
}

class _SettingsScreenBodyState extends State<SettingsScreenBody> {
  bool isPriorityDetectionEnabled = false;
  bool isAutoSendRepliesEnabled = false;
  String currentTone = 'Formal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (MediaQuery.of(context).size.width - 556.r) / 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 44.r),
            Text('Settings', style: AppStyles.headline2),
            SizedBox(height: 39.r),
            Text('AI Tone', style: AppStyles.bodyText3),
            SizedBox(height: 16.r),
            AiToneSelector(
              currentTone: currentTone,
              onToneChanged: (String newTone) {
                setState(() {
                  currentTone = newTone;
                });
              },
            ),
            SizedBox(height: 20.r),
            Text('Priority Detection', style: AppStyles.bodyText3),
            SizedBox(height: 16.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Enable Priority Detection', style: AppStyles.bodyText4),
                CustomSwitch(
                  value: isPriorityDetectionEnabled,
                  onChanged: (value) {
                    setState(() {
                      isPriorityDetectionEnabled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 34.r),
            Text('Auto-send Replies', style: AppStyles.bodyText3),
            SizedBox(height: 16.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Enable Auto-send Replies', style: AppStyles.bodyText4),
                CustomSwitch(
                  value: isAutoSendRepliesEnabled,
                  onChanged: (value) {
                    setState(() {
                      isAutoSendRepliesEnabled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 34.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  text: 'Save',
                  height: 40.r,
                  width: 84.r,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 80.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(
                  text: 'Logout',
                  height: 59.r,
                  width: 317.r,
                  onPressed: () {},
                  color: kSecondaryColor,
                  iconPath: AssetsData.logOuttIcon,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
