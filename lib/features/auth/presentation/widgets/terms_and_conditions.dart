import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});
  @override
  State<TermsAndConditions> createState() =>
      _TermsAndConditionsState();
}

class _TermsAndConditionsState
    extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(14, 0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomCheckBox(
              onChecked: (value) {
                isTermsAccepted = value;
                setState(() {});
              },
              isChecked: isTermsAccepted,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'من خلال إنشاء حسابك، فإنك توافق على',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xff949D9E),
                    ),
                  ),
                  TextSpan(
                    text: ' الشروط والأحكام',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: 'الخاصة',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: 'بنا',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
