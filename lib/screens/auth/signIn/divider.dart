import 'package:flutter/material.dart';
import '../../../utils/size_utils.dart';

class divider extends StatelessWidget {
  const divider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height(context, 0.05),
      width: SizeUtils.width(context, 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Divider(color: Colors.black12)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.text(context, 0.05),
            ),
            child: Text("or", style: TextStyle(color: Color(0xFF717182))),
          ),
          Expanded(child: Divider(color: Colors.black12)),
        ],
      ),
    );
  }
}
