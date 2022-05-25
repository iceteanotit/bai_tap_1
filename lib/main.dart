import 'package:bai_tap_1/views/screens/screen_sign_in.dart';
import 'package:bai_tap_1/views/screens/screen_sign_up.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        signInRoutes: (context) => const SignUpScreen(),
        signUpRoutes: (context) => const SignInScreen(),
      },
    );
  }
}
