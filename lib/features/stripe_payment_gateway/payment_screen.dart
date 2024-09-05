import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetcomm/features/stripe_payment_gateway/bloc/stripe_payment_bloc.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController amountTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  var message = "";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StripePaymentBloc(),
      child: BlocBuilder(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text('Checkout Screen'),
            backgroundColor: Colors.purple,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.2),
                  border: Border.all(color: Colors.blue),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Amount'),
                    const SizedBox(
                      height: 8,
                    ),
                    _buildTextField(),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildPayButton(context),
                    Text(
                        message.isNotEmpty ? 'You are paying \$ $message' : ""),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildTextField() {
    return TextFormField(
      controller: amountTextController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
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
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        LengthLimitingTextInputFormatter(12),
        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
      ],
      onChanged: (value) {
        setState(() {
          message = value;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a value';
        }
        if (value.length > 12) {
          return 'Maximum 12 characters allowed';
        }
        if (!RegExp(r'^\d+\.?\d{0,2}$').hasMatch(value)) {
          return 'Enter a valid number with up to 2 decimal places';
        }
        return null;
      },
    );
  }

  Widget _buildPayButton(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        FilledButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Proceed with payment
              final amount = double.parse(amountTextController.text);
              print('-------> amount is $amount');
              context
                  .read<StripePaymentBloc>()
                  .add(StripePaymentEvent.initializePayment(amount: amount));
            }
          },
          style: FilledButton.styleFrom(backgroundColor: Colors.green),
          child: const Text('Pay'),
        ),
      ],
    );
  }
}
