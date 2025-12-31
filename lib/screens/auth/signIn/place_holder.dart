import 'package:eventchain/utils/size_utils.dart';
import 'package:eventchain/utils/ui_helper.dart';
import 'google_button.dart';
import 'package:flutter/material.dart';
import 'divider.dart';
import 'logo.dart';
import 'email.dart';

class placeHolder extends StatelessWidget {
  const placeHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: SizeUtils.height(context, 0.7),
        width: SizeUtils.width(context, 0.9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeUtils.height(context, 0.03)),
          color: Color(0xFFFFFFFF),
          border: BoxBorder.all(
            color: Color(0xFFF3F4F6),
            width: 0.5,
            style: BorderStyle.solid,
          ),
        ),
        child: Center(
          child: Column(
            // spacing: SizeUtils.height(context, 0.0005),
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: SizeUtils.height(context, 0.05)),
              logo(),
              SizedBox(height: SizeUtils.height(context, 0.01)),
              UiHelper.customText(
                text: "Welcome back! Sign in to continue",
                textColor: 0xFF717182,
                fontWeight: FontWeight.normal,
                fontSize: SizeUtils.text(context, 0.04),
              ),
              SizedBox(height: SizeUtils.height(context, 0.045)),
              GoogleButton(),
              SizedBox(height: SizeUtils.height(context, 0.025)),
              divider(),
              SizedBox(height: SizeUtils.height(context, 0.025)),
              EmailField(),
            ],
          ),
        ),
      ),
    );
  }
}
