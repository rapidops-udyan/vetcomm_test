import 'package:flutter/material.dart';
import 'package:vetcomm/features/stripe_payment_gateway/stripe_services.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MakePayment'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              StripeServices.instance.makePayment();
            },
            child: const Text('Proceed for payment'),
          ),
        ],
      ),
    );
  }
}
