import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: ' لا تمتلك حساب؟',
        style: TextStyles.semiBold16.copyWith(
          color: Color(0xffC9CECF),
        ),
        children: [
          TextSpan(
            text: 'قم بإنشاء حساب',
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xff2D9F5D),
            ),
          ),
        ],
      ),
    );
  }
}
