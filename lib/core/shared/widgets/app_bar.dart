import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kTertiaryColor,
      title: Row(
        children: [
          SvgPicture.asset(AssetsData.mailMindIcon, height: 40.r, width: 44.r),
          Spacer(),
          Container(
            height: 40.r,
            width: 40.r,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                AssetsData.settingsIcon,
                height: 20.r,
                width: 20.r,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 8.r),
          CircleAvatar(
            radius: 20.r,
            backgroundColor: kPrimaryColor,
            child: ClipOval(
              child: Image.asset(
                AssetsData.thumbImage,
                height: 40.r,
                width: 40.r,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.0.h),
        child: Container(color: kAccentColor4, height: 2.0.h),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
