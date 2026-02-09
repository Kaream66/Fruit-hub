import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Color(0xffC9CECF), thickness: 1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'أو',
            style: TextStyles.semiBold16.copyWith(),
          ),
        ),
        Expanded(
          child: Divider(color: Color(0xffC9CECF), thickness: 1),
        ),
      ],
    );
  }
}
