import 'package:flap_task/features/order/data/data_source/order_data_source.dart';
import 'package:flap_task/features/order/data/repository/order_repository_impl.dart';
import 'package:flap_task/features/order/domain/repository/order_repository.dart';
import 'package:flap_task/features/order/domain/usecases/fetch_order_usecase.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  Future<void> init() async {

    // order Feature
   
    sl.registerLazySingleton<OrdersDataSource>(
            () => OrdersDataSourceImpl());
    sl.registerLazySingleton<OrdersRepository>(
            () => OrdersRepositoryImpl(orderdataSource: sl()));
    sl.registerLazySingleton<FetchOrdersUseCase>(
            () => FetchOrdersUseCase(repository: sl()));
  }
}
