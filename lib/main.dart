import 'package:flutter/material.dart';
import 'package:eventchain/screens/splash/splash_screen.dart';
import 'screens/auth/signIn/sign_in_screen.dart';


void main() {
  runApp(const EventChainApp());
}

class EventChainApp extends StatelessWidget {
  const EventChainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
