import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: TextButton.icon(
          onPressed: googleSignIn,
          label: const Text('Sign Up with Google'),
        ),
      ),
    );
  }

  void googleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: ['android'],
    );
    try {
      var result = await googleSignIn.signIn();
      print(result);
    } catch (error) {
      print(error);
    }
  }
}
