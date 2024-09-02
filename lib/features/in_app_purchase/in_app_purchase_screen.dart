import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetcomm/features/in_app_purchase/bloc/in_app_purchase_bloc.dart';

class InAppPurchaseScreen extends StatefulWidget {
  const InAppPurchaseScreen({super.key});

  @override
  State<InAppPurchaseScreen> createState() => _InAppPurchaseScreenState();
}

class _InAppPurchaseScreenState extends State<InAppPurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InAppPurchaseBloc()..add(InAppPurchaseEvent.init()),
      child: Scaffold(
        appBar: AppBar(title: const Text('In App Purchase')),
        body: BlocBuilder<InAppPurchaseBloc, InAppPurchaseState>(
          builder: (context, state) {
            if (state.status == InAppPurchaseStateEnum.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == InAppPurchaseStateEnum.ready) {
              return const Center(child: Text('Ready'));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
