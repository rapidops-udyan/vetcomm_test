import 'package:flutter/material.dart';

import 'features/in_app_purchase/in_app_purchase_screen.dart';
import 'features/stripe_payment_gateway/payment_screen.dart';
import 'features/youtube/youtube_player_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vetcomm'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InAppPurchaseScreen(),
                  ),
                );
              },
              child: const Text('In-App Purchase'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
              child: const Text('Payment Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YoutubePlayerFlutter(),
                  ),
                );
              },
              child: const Text('Youtube Screen'),
            )
          ],
        ),
      ),
    );
  }
}
