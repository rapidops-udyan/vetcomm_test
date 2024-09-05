import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:vetcomm/features/in_app_purchase/bloc/in_app_purchase_bloc.dart';

class InAppPurchaseScreen extends StatelessWidget {
  const InAppPurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          InAppPurchaseBloc()..add(const InAppPurchaseEvent.initialize()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('In-App Purchase'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: BlocConsumer<InAppPurchaseBloc, InAppPurchaseState>(
          listener: (context, state) {
            print(state.error);
            if (state.status == InAppPurchaseStatus.error) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error ?? 'An error occurred')));
            } else if (state.status == InAppPurchaseStatus.purchaseComplete) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Purchase successful')));
            } else if (state.status == InAppPurchaseStatus.restored) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Subscription Restored')));
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case InAppPurchaseStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case InAppPurchaseStatus.ready:
              case InAppPurchaseStatus.purchaseComplete:
                return _buildSubscriptionList(context, state);
              case InAppPurchaseStatus.error:
                return Center(child: Text(state.error ?? 'An error occurred'));
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  Widget _buildSubscriptionList(
      BuildContext context, InAppPurchaseState state) {
    if (state.products.isEmpty) {
      return const Center(child: Text('No subscription plans available.'));
    }

    return ListView.builder(
      itemCount:
          state.products.length + (state.activeSubscription != null ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == 0 && state.activeSubscription != null) {
          return _buildActiveSubscriptionCard(state);
        }
        final productIndex = index - (state.activeSubscription != null ? 1 : 0);
        final product = state.products[productIndex];
        return _buildSubscriptionCard(context, product, state);
      },
    );
  }

  Widget _buildActiveSubscriptionCard(InAppPurchaseState state) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Current Subscription',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text('Plan: ${state.activeSubscription!.productID}'),
        ],
      ),
    );
  }

  Widget _buildSubscriptionCard(
      BuildContext context, ProductDetails product, InAppPurchaseState state) {
    final isActive = state.activeSubscription?.productID == product.id;
    return ListTile(
      trailing: Text(product.price, style: const TextStyle(fontSize: 18)),
      title: Text(product.title),
      subtitle: Text(product.description),
      leading: Radio(
        activeColor: Colors.green,
        onChanged: (_) {},
        groupValue: true, value: isActive,
      ),
      onTap: () {
        if (!isActive) {
          context.read<InAppPurchaseBloc>().add(
              InAppPurchaseEvent.buyProduct(product, state.activeSubscription));
        }
      },
    );
  }
}
