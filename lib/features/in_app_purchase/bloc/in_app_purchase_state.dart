part of 'in_app_purchase_bloc.dart';

enum InAppPurchaseStateEnum {
  initial,
  loading,
  ready,
  error;
}

@freezed
class InAppPurchaseState with _$InAppPurchaseState {
  const factory InAppPurchaseState({
    @Default(InAppPurchaseStateEnum.initial) InAppPurchaseStateEnum status,
    @Default(null) InAppPurchase? iap,
  }) = _InAppPurchaseState;
}
