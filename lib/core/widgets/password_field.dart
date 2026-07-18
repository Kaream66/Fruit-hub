import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() =>
      _PasswordFieldState();
}

class _PasswordFieldState
    extends State<PasswordField> {
  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      obsecureText: obsecureText,
      onSaved: (value) {},
      hintText: 'كلمة المرور',
      textInputType:
          TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          obsecureText = !obsecureText;
          setState(() {});
        },
        child: obsecureText
            ? Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              )
            : Icon(
                Icons.visibility_off,
                color: Color(0xffC9CECF),
              ),
      ),
    );
  }
}
