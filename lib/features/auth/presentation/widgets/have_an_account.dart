import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: ' تمتلك حساب بالفعل؟',
        style: TextStyles.semiBold16.copyWith(
          color: Color(0xffC9CECF),
        ),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: 'تسجيل الدخول',
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xff2D9F5D),
            ),
          ),
        ],
      ),
    );
  }
}
