import 'package:flutter/material.dart';

class SizeUtils {
  static double width(BuildContext context, double percent) {
    return MediaQuery.of(context).size.width * percent;
  }

  static double height(BuildContext context, double percent) {
    return MediaQuery.of(context).size.height * percent;
  }

  static double text(BuildContext context, double scale) {
    return MediaQuery.of(context).size.width * scale;
  }
}
