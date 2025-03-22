import 'package:flutter/material.dart';

class SignupActionScreen extends StatelessWidget {
  const SignupActionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I Am A Catholic'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Spacer(),
            // Sign up button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signupStep1');
              },
              child: const Text('Sign up free'),
            ),
            const SizedBox(height: 16),
            // Google sign up
            ElevatedButton.icon(
              onPressed: () {
                // Implement Google sign up
              },
              icon: const Icon(Icons.account_circle),
              label: const Text('Sign up with Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // <--- updated
                // foregroundColor: Colors.white,    // optional
              ),
            ),
            const SizedBox(height: 16),
            // Facebook sign up
            ElevatedButton.icon(
              onPressed: () {
                // Implement Facebook sign up
              },
              icon: const Icon(Icons.facebook),
              label: const Text('Sign up with Facebook'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // <--- updated
                // foregroundColor: Colors.white,    // optional
              ),
            ),
            const Spacer(),
            // Login
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
