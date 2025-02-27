import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';
import 'package:mail_mind_extension/core/utils/app_assets.dart';

class AiToneSelector extends StatelessWidget {
  final String currentTone;
  final Function(String) onToneChanged;

  const AiToneSelector({
    super.key,
    required this.currentTone,
    required this.onToneChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      offset: Offset(0, 8.r),
      position: PopupMenuPosition.under,
      constraints: BoxConstraints(minWidth: 448.r, maxWidth: 448.r),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(color: kAccentColor3, width: 1),
      ),
      color: kTertiaryColor,
      elevation: 4,
      itemBuilder:
          (context) => [
            _buildPopupMenuItem('Formal'),
            _buildPopupMenuItem('Natural'),
            _buildPopupMenuItem('Casual'),
          ],
      onSelected: onToneChanged,
      child: Container(
        width: 448.r,
        height: 32.r,
        decoration: BoxDecoration(
          color: kAccentColor3,
          borderRadius: BorderRadius.circular(32.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16.r, right: 4.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                currentTone,
                style: AppStyles.bodyText4.copyWith(color: kSecondaryColor),
              ),
              Padding(
                padding: EdgeInsets.only(right: 4.r),
                child: SvgPicture.asset(AssetsData.swapIcon),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildPopupMenuItem(String tone) {
    return PopupMenuItem<String>(
      value: tone,
      height: 32.r,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color:
              tone == currentTone
                  ? kAccentColor3.withOpacity(0.1)
                  : Colors.transparent,
        ),
        child: Text(
          tone,
          style: AppStyles.bodyText4.copyWith(
            color: tone == currentTone ? kSecondaryColor : kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
