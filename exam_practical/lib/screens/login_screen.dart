import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Email
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // Password
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              // Login button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Implement login logic here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Login Successful (Demo)'),
                      ),
                    );
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 16),
              // Google login
              ElevatedButton.icon(
                onPressed: () {
                  // Implement Google login
                },
                icon: const Icon(Icons.account_circle),
                label: const Text('Login with Google'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent, // <--- updated
                ),
              ),
              const SizedBox(height: 16),
              // Facebook login
              ElevatedButton.icon(
                onPressed: () {
                  // Implement Facebook login
                },
                icon: const Icon(Icons.facebook),
                label: const Text('Login with Facebook'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // <--- updated
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
