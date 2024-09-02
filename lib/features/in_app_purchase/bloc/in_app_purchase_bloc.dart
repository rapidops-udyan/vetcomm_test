import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

part 'in_app_purchase_event.dart';

part 'in_app_purchase_state.dart';

part 'in_app_purchase_bloc.freezed.dart';

class InAppPurchaseBloc extends Bloc<InAppPurchaseEvent, InAppPurchaseState> {
  final Set<String> _kIds = <String>{'product1', 'product2'};

  InAppPurchaseBloc() : super(const InAppPurchaseState()) {
    on<_InAppPurchaseInitEvent>(_init);
    on<_InAppPurchaseFetchProductEvent>(_fetchProduct);
  }

  FutureOr<void> _init(
    _InAppPurchaseInitEvent event,
    Emitter<InAppPurchaseState> emit,
  ) {
    emit(state.copyWith(status: InAppPurchaseStateEnum.loading));
    final instance = InAppPurchase.instance;
    emit(state.copyWith(iap: instance, status: InAppPurchaseStateEnum.ready));
  }

  Future<void> _fetchProduct(
    _InAppPurchaseFetchProductEvent event,
    Emitter<InAppPurchaseState> emit,
  ) async {
    final products = await state.iap!.queryProductDetails(_kIds);
    if (products.productDetails.isNotEmpty) {}
  }
}
