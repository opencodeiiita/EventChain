import 'package:flutter/material.dart';
import 'center_ui.dart';

class GradientBg extends StatelessWidget {
  const GradientBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFAF5FF),
                  Color(0xFFFFFFFF),
                  Color(0xFFEEF2FF),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-1.0, 0.225),
                radius: 0.7,
                colors: [Color(0x88C6D2FF)],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(1.0, -0.225),
                radius: 0.7,
                colors: [Color(0x88E9D4FF)],
              ),
            ),
          ),
          Center(child: CenterUi()),
        ],
      ),
    );
  }
}
