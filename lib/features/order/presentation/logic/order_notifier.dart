import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entity/order.dart';
import '../../domain/usecases/fetch_order_usecase.dart';

class OrdersNotifier extends StateNotifier<AsyncValue<List<Order>>> {
  OrdersNotifier({required this.fetchOrdersUseCase}) : super(const AsyncValue.loading()) {
    fetchOrders();
  }

  final FetchOrdersUseCase fetchOrdersUseCase;

  Future<void> fetchOrders() async {
    try {
      final orders = await fetchOrdersUseCase();
      state = AsyncValue.data(orders);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}

