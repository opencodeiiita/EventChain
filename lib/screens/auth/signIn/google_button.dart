import 'package:eventchain/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import '../../../utils/size_utils.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height(context, 0.06),
      width: SizeUtils.width(context, 0.7),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Color(0x2F000000), width: 1),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              SizeUtils.height(context, 0.01),
            ),
          ),
        ),
        onPressed: () {
          print("Button Pressed!");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/googleLogo.png", height: 20, width: 20),
            SizedBox(width: 30),
            UiHelper.customText(
              text: "Continue with Google",
              textColor: 0xFF0A0A0A,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ],
        ),
      ),
    );
  }
}

// I'll revert here :p
