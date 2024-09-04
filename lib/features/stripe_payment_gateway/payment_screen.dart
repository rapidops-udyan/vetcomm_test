import 'package:flutter/material.dart';
import 'package:vetcomm/features/stripe_payment_gateway/stripe_services.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController amountTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MakePayment'),
      ),
      body: Column(
        children: [
          TextField(
            controller: amountTextController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(8.0),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
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
