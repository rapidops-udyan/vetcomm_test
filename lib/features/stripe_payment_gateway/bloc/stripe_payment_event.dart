part of 'stripe_payment_bloc.dart';

@freezed
class StripePaymentEvent with _$StripePaymentEvent {
  const factory StripePaymentEvent.started() = _Started;
  const factory StripePaymentEvent.fetchClientKey() = _StripePaymentFetchClientKey;
  const factory StripePaymentEvent.initializePayment({@Default(0) double amount, @Default('usd') String currency, }) = _StripePaymentInitializePayment;
  const factory StripePaymentEvent.paymentCompletion() = _StripePaymentCompletionEvent;
}
