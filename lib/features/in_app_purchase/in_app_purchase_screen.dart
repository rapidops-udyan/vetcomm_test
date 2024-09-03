import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetcomm/features/in_app_purchase/bloc/in_app_purchase_bloc.dart';

class InAppPurchaseScreen extends StatelessWidget {
  const InAppPurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          InAppPurchaseBloc()..add(const InAppPurchaseEvent.initializeIAP()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'In-App Purchase',
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          actions: [
            BlocBuilder<InAppPurchaseBloc, InAppPurchaseState>(
              builder: (context, state) {
                return TextButton.icon(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  icon: const Icon(Icons.restore),
                  onPressed: state.status == InAppPurchaseStatus.loaded
                      ? () => context
                          .read<InAppPurchaseBloc>()
                          .add(const InAppPurchaseEvent.restoreSubscriptions())
                      : null,
                  label: const Text('Restore'),
                );
              },
            ),
          ],
        ),
        body: BlocConsumer<InAppPurchaseBloc, InAppPurchaseState>(
          listener: (context, state) {
            if (state.status == InAppPurchaseStatus.error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(state.errorMessage ?? 'An error occurred')),
              );
            } else if (state.status == InAppPurchaseStatus.purchased) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Subscription purchased successfully!')),
              );
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case InAppPurchaseStatus.initializing:
              case InAppPurchaseStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case InAppPurchaseStatus.unavailable:
                return const Center(
                    child: Text(
                        'In-app purchases are not available on this device.'));
              case InAppPurchaseStatus.loaded:
                return _buildSubscriptionList(context, state);
              case InAppPurchaseStatus.error:
                return Center(
                    child: Text(state.errorMessage ?? 'An error occurred'));
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
    if (state.subscriptions.isEmpty) {
      return const Center(child: Text('No Subscription Plans were found !'));
    }
    return ListView.builder(
      itemCount: state.subscriptions.length,
      itemBuilder: (context, index) {
        final subscription = state.subscriptions[index];
        final isActive = state.activeSubscriptions.contains(subscription.id);
        return ListTile(
          title: Text(subscription.title),
          subtitle: Text(subscription.description),
          trailing: isActive
              ? const Icon(Icons.check_circle, color: Colors.green)
              : TextButton(
                  child: Text(subscription.price),
                  onPressed: () => context.read<InAppPurchaseBloc>().add(
                        InAppPurchaseEvent.purchaseSubscription(subscription),
                      ),
                ),
        );
      },
    );
  }
}