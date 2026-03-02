import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 75),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked
              ? AppColors.primaryColor
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: isChecked
                  ? Colors.transparent
                  : Color(0xffDCDEDE),
              width: 1.5,
            ),
          ),
        ),
        child: isChecked
            ? SvgPicture.asset(Assets.imagesCheck)
            : SizedBox(),
      ),
    );
  }
}
