import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices {
  StripeServices._();

  static final StripeServices instance = StripeServices._();

  Dio dio = Dio();

  Future<void> makePayment() async {
    try {
      String? clientSecretKey =
          await _createPaymentIntent(amount: 10, currency: 'usd');
      if (clientSecretKey != null) {
        await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: clientSecretKey,
            merchantDisplayName: "Vet comm"
          ),
        );
        await _processPayment();
      }
      return;
    } catch (e) {
      print('----> EXCEPTION OCCURRED - $e');
    }
  }

  Future<void> _processPayment()async{
    try{
      await Stripe.instance.presentPaymentSheet();
    }catch(e){
      print('INSIDE THE EXCEPTION BLOC');
    }
  }

  Future<String?> _createPaymentIntent({
    required int amount,
    required String currency,
  }) async {
    try {
      Map<String, dynamic> data = {
        "amount": calculateAmount(amount),
        "currency": currency,
      };

      var response = await dio.post(
        "https://api.stripe.com/v1/payment_intents",
        data: data,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          headers: {
            "Authorization": "Bearer $secretKey",
            "Content-Type": 'application/x-www-form-urlencoded',
          },
        ),
      );
      if (response.data != null) {
        return response.data["client_secret"];
      }
      return null;
    } catch (e) {
      DioException err = e as DioException;
      print('-----> Response is  : ${err.response}');

      print('-----> EXCEPTION OCCURED WHILE PAYMENT INTENT CREATION : ${e}');
    }
    return null;
  }

  int calculateAmount(int amount) {
    int result = amount * 100;
    return result;
  }
}

String stripePublishableKey =
    'pk_test_51PuYgIFVcDu4A3RZ2fL1z1nhZXPdvhjI6keJ4tDC7w22EUjukzB9RM91dVKfgvgE0Zihw6D3mrxbUyuIoEWeUT0M001ECjRJGi';
String secretKey =
    'sk_test_51PuYgIFVcDu4A3RZHxIg9RivqCqV0znl5xNzj8HETzIzw3BAOk8UB3O2hkHyGGt3X2piFys2jtPXYNiMpawTMLg700km2gSdAO';
