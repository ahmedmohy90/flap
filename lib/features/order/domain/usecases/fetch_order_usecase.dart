import '../entity/order.dart';
import '../repository/order_repository.dart';

class FetchOrdersUseCase {
  final OrdersRepository repository;

  FetchOrdersUseCase({required this.repository});

  Future<List<Order>> call() async {
    return await repository.fetchOrders();
  }
}
