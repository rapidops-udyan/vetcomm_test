import 'package:flutter/material.dart';
import 'package:vetcomm/features/in_app_purchase/in_app_purchase_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InAppPurchaseScreen(),
    );
  }
}
