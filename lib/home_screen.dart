import 'package:flutter/material.dart';

import 'features/in_app_purchase/in_app_purchase_screen.dart';
import 'features/login/login_screen.dart';
import 'features/stripe_payment_gateway/payment_screen.dart';
import 'features/youtube/youtube_iframe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vetcomm'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildButton(
                context, 'In-App Purchase', const InAppPurchaseScreen()),
            _buildButton(context, 'Payment Screen', const PaymentScreen()),
            _buildButton(
                context, 'Youtube Screen', const YoutubePlayerScreen()),
            _buildButton(context, 'Login Screen', const LoginScreen()),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, Widget page) {
    return Expanded(
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
        style: TextButton.styleFrom(shape: LinearBorder.none),
        label: Text(label, style: const TextStyle(fontSize: 20)),
        icon: const Icon(Icons.keyboard_arrow_right_rounded, size: 30),
      ),
    );
  }
}
