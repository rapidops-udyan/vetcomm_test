import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

part 'in_app_purchase_event.dart';
part 'in_app_purchase_state.dart';
part 'in_app_purchase_bloc.freezed.dart';

class InAppPurchaseBloc extends Bloc<InAppPurchaseEvent, InAppPurchaseState> {
  StreamSubscription<List<PurchaseDetails>>? _purchaseUpdateSubscription;

  InAppPurchaseBloc() : super(const InAppPurchaseState()) {
    on<_InitializeIAP>(_onInitializeIAP);
    on<_FetchSubscriptions>(_onFetchSubscriptions);
    on<_PurchaseSubscription>(_onPurchaseSubscription);
    on<_RestoreSubscriptions>(_onRestoreSubscriptions);
    on<_HandlePurchaseUpdate>(_onHandlePurchaseUpdate);
    on<_UpdatePurchaseStatus>(_onUpdatePurchaseStatus);
  }

  Future<void> _onInitializeIAP(
      _InitializeIAP event, Emitter<InAppPurchaseState> emit) async {
    emit(state.copyWith(status: InAppPurchaseStatus.initializing));
    final isAvailable = await InAppPurchase.instance.isAvailable();
    if (!isAvailable) {
      emit(state.copyWith(status: InAppPurchaseStatus.unavailable));
      return;
    }
    final inAppPurchase = InAppPurchase.instance;
    emit(state.copyWith(
      status: InAppPurchaseStatus.available,
      inAppPurchase: inAppPurchase,
    ));

    _purchaseUpdateSubscription = inAppPurchase.purchaseStream.listen(
      (purchaseDetailsList) {
        add(InAppPurchaseEvent.handlePurchaseUpdate(purchaseDetailsList));
      },
      onDone: () {
        _purchaseUpdateSubscription?.cancel();
        _purchaseUpdateSubscription = null;
      },
      onError: (error) {
        add(InAppPurchaseEvent.updatePurchaseStatus(
            InAppPurchaseStatus.error, error.toString()));
      },
    );

    add(const InAppPurchaseEvent.fetchSubscriptions());
  }

  Future<void> _onFetchSubscriptions(
      _FetchSubscriptions event, Emitter<InAppPurchaseState> emit) async {
    emit(state.copyWith(status: InAppPurchaseStatus.loading));
    final productDetailResponse = await state.inAppPurchase!
        .queryProductDetails(state.subscriptionProductIds);
    if (productDetailResponse.error != null) {
      emit(state.copyWith(
          status: InAppPurchaseStatus.error,
          errorMessage: productDetailResponse.error!.message));
      return;
    }
    emit(state.copyWith(
      status: InAppPurchaseStatus.loaded,
      subscriptions: productDetailResponse.productDetails,
    ));
  }

  Future<void> _onPurchaseSubscription(
      _PurchaseSubscription event, Emitter<InAppPurchaseState> emit) async {
    final purchaseParam = PurchaseParam(productDetails: event.productDetails);
    try {
      final success = await state.inAppPurchase!
          .buyNonConsumable(purchaseParam: purchaseParam);
      if (!success) {
        emit(state.copyWith(
            status: InAppPurchaseStatus.error,
            errorMessage: 'Purchase failed'));
      }
    } catch (e) {
      emit(state.copyWith(
          status: InAppPurchaseStatus.error, errorMessage: e.toString()));
    }
  }

  Future<void> _onRestoreSubscriptions(
      _RestoreSubscriptions event, Emitter<InAppPurchaseState> emit) async {
    emit(state.copyWith(status: InAppPurchaseStatus.loading));
    try {
      await state.inAppPurchase!.restorePurchases();
      emit(state.copyWith(status: InAppPurchaseStatus.loaded));
    } catch (e) {
      emit(state.copyWith(
          status: InAppPurchaseStatus.error,
          errorMessage: 'Failed to restore purchases: ${e.toString()}'));
    }
  }

  Future<void> _onHandlePurchaseUpdate(
      _HandlePurchaseUpdate event, Emitter<InAppPurchaseState> emit) async {
    for (var purchaseDetails in event.purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        final valid = await _verifyPurchase(purchaseDetails);
        if (valid) {
          emit(state.copyWith(
            activeSubscriptions: {
              ...state.activeSubscriptions,
              purchaseDetails.productID
            },
            status: InAppPurchaseStatus.purchased,
          ));
        } else {
          emit(state.copyWith(
              status: InAppPurchaseStatus.error,
              errorMessage: 'Invalid purchase'));
        }
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        emit(state.copyWith(
            status: InAppPurchaseStatus.error,
            errorMessage: purchaseDetails.error!.message));
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await state.inAppPurchase!.completePurchase(purchaseDetails);
      }
    }
  }

  void _onUpdatePurchaseStatus(
      _UpdatePurchaseStatus event, Emitter<InAppPurchaseState> emit) {
    emit(
        state.copyWith(status: event.status, errorMessage: event.errorMessage));
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    // Implement your purchase verification logic here
    // This could involve server-side verification
    return true;
  }

  @override
  Future<void> close() {
    _purchaseUpdateSubscription?.cancel();
    return super.close();
  }
}