part of 'in_app_purchase_bloc.dart';

@freezed
class InAppPurchaseEvent with _$InAppPurchaseEvent {
  const factory InAppPurchaseEvent.initializeIAP() = _InitializeIAP;
  const factory InAppPurchaseEvent.fetchSubscriptions() = _FetchSubscriptions;
  const factory InAppPurchaseEvent.purchaseSubscription(ProductDetails productDetails) = _PurchaseSubscription;
  const factory InAppPurchaseEvent.restoreSubscriptions() = _RestoreSubscriptions;
  const factory InAppPurchaseEvent.handlePurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) = _HandlePurchaseUpdate;
  const factory InAppPurchaseEvent.updatePurchaseStatus(InAppPurchaseStatus status, String? errorMessage) = _UpdatePurchaseStatus;
}