import 'package:flap_task/features/order/presentation/logic/order_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/services/service_locator.dart';
import '../../domain/entity/order.dart';

final ordersProvider = StateNotifierProvider<OrdersNotifier, AsyncValue<List<Order>>>(
  (ref) => OrdersNotifier(fetchOrdersUseCase: sl()),
);
