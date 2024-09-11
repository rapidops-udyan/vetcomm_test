import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookLogin extends StatefulWidget {
  const FacebookLogin({super.key});

  @override
  State<FacebookLogin> createState() => _FacebookLoginState();
}

class _FacebookLoginState extends State<FacebookLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: facebookLogin,
          child: const Text('Login with Facebook'),
        ),
      ),
    );
  }

  void facebookLogin() async {
    final result =
        await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
    print(result);
    if (result.status == LoginStatus.success) {
      final userData = await FacebookAuth.i.getUserData();
      print(userData);
    } else {
      print('Failed to login');
    }
  }
}
