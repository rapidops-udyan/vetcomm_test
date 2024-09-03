part of 'stripe_payment_bloc.dart';

@freezed
class StripePaymentEvent with _$StripePaymentEvent {
  const factory StripePaymentEvent.started() = _Started;
}
