part of 'in_app_purchase_bloc.dart';

@freezed
class InAppPurchaseEvent with _$InAppPurchaseEvent {
  const factory InAppPurchaseEvent.started() = _Started;
  const factory InAppPurchaseEvent.init() = _InAppPurchaseInitEvent;
  const factory InAppPurchaseEvent.fetchProduct() = _InAppPurchaseFetchProductEvent;
}
