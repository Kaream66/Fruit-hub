import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

AppBar CustomAppBar(context, {required String title}) {
  return AppBar(
    centerTitle: true,
    title: Text(title, style: TextStyles.bold19),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
    ),
  );
}
