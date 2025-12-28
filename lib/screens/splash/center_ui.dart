import 'package:eventchain/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CenterUi extends StatelessWidget {
  const CenterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SizeUtils.height(context, 0.025),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          spacing: SizeUtils.width(context, 0.06),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: SizeUtils.width(context, 0.18),
              height: SizeUtils.width(context, 0.18),
              child: Image.asset('assets/images/appLogo.png'),
            ),
            Text(
              "EventChain",
              style: TextStyle(
                color: Color(0xFF9810FA),
                fontSize: SizeUtils.text(context, 0.075),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          "Connect. Catch. Celebrate.",
          style: TextStyle(
            color: Color(0xFF717182),
            fontSize: SizeUtils.text(context, 0.038),
          ),
        ),
      ],
    );
  }
}
