part of 'in_app_purchase_bloc.dart';

enum InAppPurchaseStatus {
  initial,
  initializing,
  available,
  unavailable,
  loading,
  loaded,
  purchasing,
  purchased,
  error,
}

@freezed
class InAppPurchaseState with _$InAppPurchaseState {
  const factory InAppPurchaseState({
    @Default(InAppPurchaseStatus.initial) InAppPurchaseStatus status,
    InAppPurchase? inAppPurchase,
    @Default([]) List<ProductDetails> subscriptions,
    @Default({}) Set<String> activeSubscriptions,
    StreamSubscription<List<PurchaseDetails>>? purchaseStreamSubscription,
    String? errorMessage,
    @Default({'monthly_subscription', 'yearly_subscription'})
    Set<String> subscriptionProductIds,
  }) = _InAppPurchaseState;
}