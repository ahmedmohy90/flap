import 'package:flap_task/features/order/domain/repository/order_repository.dart';

import '../../domain/entity/order.dart';
import '../data_source/order_data_source.dart';

class OrdersRepositoryImpl implements OrdersRepository {
  final OrdersDataSource orderdataSource;

  OrdersRepositoryImpl({required this.orderdataSource});

  @override
  Future<List<Order>> fetchOrders() async {
    return await orderdataSource.getOrders();
  }
}
