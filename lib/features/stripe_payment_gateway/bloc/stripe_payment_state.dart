part of 'stripe_payment_bloc.dart';

@freezed
class StripePaymentState with _$StripePaymentState {
  const factory StripePaymentState.initial() = _Initial;
  const factory StripePaymentState.loading() = _StripePaymentLoadingState;
  const factory StripePaymentState.error({@Default("") String errorMessage }) =_StripePaymentErrorState;
  const factory StripePaymentState.success() = _StripePaymentSuccessState;
}
