import 'package:eventchain/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../../../utils/ui_helper.dart';
import 'emailInputField.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height(context, 0.25),
      width: SizeUtils.width(context, 0.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          emailText(context),
          SizedBox(height: SizeUtils.height(context, 0.005)),
          inputField(context),
          SizedBox(height: SizeUtils.height(context, 0.005)),
          passwordText(context),
          SizedBox(height: SizeUtils.height(context, 0.005)),
          passInputField(context),
          SizedBox(height: SizeUtils.height(context, 0.005)),
          signIn(context),
        ],
      ),
    );
  }
}

Widget emailText(BuildContext context) {
  return ColoredBox(
    color: Colors.yellow,
    child: SizedBox(
      height: SizeUtils.text(context, 0.04125),
      child: Row(
        children: [
          UiHelper.customText(
            text: "Email",
            textColor: 0xFF0A0A0A,
            fontWeight: FontWeight.normal,
            fontSize: SizeUtils.text(context, 0.04),
          ),
        ],
      ),
    ),
  );
}

Widget passwordText(BuildContext context) {
  return ColoredBox(
    color: Colors.yellow,
    child: SizedBox(
      height: SizeUtils.text(context, 0.04125),
      child: Row(
        children: [
          UiHelper.customText(
            text: "Email",
            textColor: 0xFF0A0A0A,
            fontWeight: FontWeight.normal,
            fontSize: SizeUtils.text(context, 0.04),
          ),
        ],
      ),
    ),
  );
}

Widget inputField(BuildContext context) {
  return; // Your code goes here
}

Widget passInputField(BuildContext context) {
  return; // Your code goes here
}

Widget signIn(BuildContext context) {
  return; // Your code goes here
}
