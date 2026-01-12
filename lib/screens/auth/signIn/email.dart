import 'package:eventchain/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../../../utils/ui_helper.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height(context, 0.25),
      width: SizeUtils.width(context, 0.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [emailText(context)],
      ),
    );
  }
}

Widget emailText(BuildContext context) {
  return SizedBox(
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
  );
}
