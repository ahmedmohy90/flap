import 'package:flap_task/features/order/presentation/views/order_graph_screen_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import 'widgets/info_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  ColorManager.scaffoldColor,
      appBar: AppBar(
        title: const Text('Order Insights', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total Orders Card
            const InfoCard(
              icon: Icons.shopping_bag,
              title: "Total Orders",
              value: "50",
            ),
            // Average Price Card
           const  InfoCard(
              icon: Icons.attach_money,
              title: "Average Price",
              value: "\$200",
            ),
            // Returns Card
           const  InfoCard(
              icon: Icons.refresh,
              title: "Returns",
              value: "5",
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrdersGraphScreen()),
                );
              },
              child: const Text("View Orders Over Time", style: TextStyle(color: ColorManager.black),),
            ),
          ],
        ),
      ),
    );
  }
}
