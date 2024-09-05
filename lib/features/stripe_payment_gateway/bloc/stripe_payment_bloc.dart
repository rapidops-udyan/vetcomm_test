import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vetcomm/features/stripe_payment_gateway/stripe_services.dart';

part 'stripe_payment_bloc.freezed.dart';
part 'stripe_payment_event.dart';
part 'stripe_payment_state.dart';

class StripePaymentBloc extends Bloc<StripePaymentEvent, StripePaymentState> {
  StripePaymentBloc() : super(const StripePaymentState.initial()) {
    on<_StripePaymentInitializePayment>(_onInitializePyamentEvent);
    on<_StripePaymentCompletionEvent>(_onCompletionPaymentEvent);
    on<_StripepaymentFailedEvent>(_onPaymentFailedEvent);
  }

  Future<void> _onInitializePyamentEvent(_StripePaymentInitializePayment event,
      Emitter<StripePaymentState> emit) async {
    await StripeServices.instance.makePayment();
  }

  FutureOr<void> _onCompletionPaymentEvent(
      _StripePaymentCompletionEvent event, Emitter<StripePaymentState> emit) {}

  FutureOr<void> _onPaymentFailedEvent(
      _StripepaymentFailedEvent event, Emitter<StripePaymentState> emit) {}
}

String stripePublishableKey =
    'pk_test_51PuYgIFVcDu4A3RZ2fL1z1nhZXPdvhjI6keJ4tDC7w22EUjukzB9RM91dVKfgvgE0Zihw6D3mrxbUyuIoEWeUT0M001ECjRJGi';
String secretKey =
    'sk_test_51PuYgIFVcDu4A3RZHxIg9RivqCqV0znl5xNzj8HETzIzw3BAOk8UB3O2hkHyGGt3X2piFys2jtPXYNiMpawTMLg700km2gSdAO';

