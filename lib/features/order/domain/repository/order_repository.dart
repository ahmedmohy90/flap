import '../entity/order.dart';

abstract class OrdersRepository {
  Future<List<Order>> fetchOrders();
}
