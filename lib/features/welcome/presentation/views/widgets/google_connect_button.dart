import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';
import 'package:mail_mind_extension/core/utils/app_assets.dart';

class GoogleConnectButton extends StatelessWidget {
  const GoogleConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380.r,
      height: 90.r,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kTertiaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 50.r),
              child: SvgPicture.asset(
                AssetsData.googleIcon,
                height: 32.r,
                width: 32.r,
              ),
            ),
            SizedBox(width: 20.r),
            Text(
              'Connect with Google',
              style: AppStyles.bodyText2.copyWith(color: kGray1),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
