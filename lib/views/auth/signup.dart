import 'dart:ui'; // For BackdropFilter
import 'package:ar_test/views/auth/Signin.dart';
import 'package:ar_test/views/welcome.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/bg2.jfif', // Update this path to your background image
            fit: BoxFit.cover,
          ),
          // Blurred background with overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.5), // Optional dark overlay for better readability
            ),
          ),
          // Centered card for the form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Edge padding of 20
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Only as tall as its contents
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: _fullnameController,
                        decoration: const InputDecoration(labelText: 'Full Name'),
                      ),
                      TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(labelText: 'Email Address'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(labelText: 'Password'),
                        obscureText: true,
                      ),
                      TextField(
                        controller: _confirmPasswordController,
                        decoration: const InputDecoration(labelText: 'Confirm Password'),
                        obscureText: true,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _termsAccepted,
                            onChanged: (value) {
                              setState(() {
                                _termsAccepted = value!;
                              });
                            },
                          ),
                          const Text("I agree to the Terms and Conditions"),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const WelcomeScreen(), // Replace with your page
                            ),
                          );
                        },
                         style: ElevatedButton.styleFrom(foregroundColor: Colors.white,
                                backgroundColor: Colors.green[700],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                               
                        child: const Text('Sign Up'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(), // Replace with your page
                            ),
                          );
                        },
                        child: const Text("Already have an account? Sign In Here"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
