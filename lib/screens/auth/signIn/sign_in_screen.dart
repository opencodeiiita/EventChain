import 'package:flutter/material.dart';
import 'place_holder.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [placeHolder()],
        ),
      ),
    );
  }
}
