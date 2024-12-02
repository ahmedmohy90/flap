import 'dart:convert';

import 'package:flap_task/features/order/data/model/order_model.dart';
import 'package:flutter/services.dart';

import '../../../../core/resources/assets_manager.dart';

abstract class OrdersDataSource {
  Future<List<OrderModel>> getOrders();
}

class OrdersDataSourceImpl implements OrdersDataSource {
  @override
  Future<List<OrderModel>> getOrders() async {
    final jsonString = await rootBundle.loadString(JsonAssetsManager.orders);
    final List<dynamic> jsonData = json.decode(jsonString);
    return jsonData.map((e) => OrderModel.fromJson(e)).toList();
  }
}
