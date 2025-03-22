import 'package:flutter/material.dart';

class SignupStep2Screen extends StatefulWidget {
  const SignupStep2Screen({Key? key}) : super(key: key);

  @override
  _SignupStep2ScreenState createState() => _SignupStep2ScreenState();
}

class _SignupStep2ScreenState extends State<SignupStep2Screen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _communityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final String name = args?['name'] ?? '';
    final String email = args?['email'] ?? '';
    final String password = args?['password'] ?? '';

    return Scaffold(
      appBar: AppBar(title: const Text("Create account (Step 2/2)")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Gender
              TextFormField(
                controller: _genderController,
                decoration: const InputDecoration(
                  labelText: 'Gender',
                ),
              ),
              const SizedBox(height: 16),
              // Date of Birth
              TextFormField(
                controller: _dobController,
                decoration: const InputDecoration(
                  labelText: 'Date of Birth (DD/MM/YYYY)',
                ),
              ),
              const SizedBox(height: 16),
              // Community
              TextFormField(
                controller: _communityController,
                decoration: const InputDecoration(
                  labelText: 'Community',
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // For demonstration, we’ll just go to the login screen
                    Navigator.pushReplacementNamed(context, '/login');
                  }
                },
                child: const Text('Create account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
