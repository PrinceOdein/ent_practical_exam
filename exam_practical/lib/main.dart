import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/signup/signup_action_screen.dart';
import 'screens/signup/signup_step1_screen.dart';
import 'screens/signup/signup_step2_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Am A Catholic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signupAction': (context) => const SignupActionScreen(),
        '/signupStep1': (context) => const SignupStep1Screen(),
        '/signupStep2': (context) => const SignupStep2Screen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
