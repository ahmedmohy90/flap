import 'package:flap_task/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersGraphScreen extends StatelessWidget {
  const OrdersGraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.scaffoldColor,
      appBar: AppBar(
        title: const Text('Orders Over Time', style: TextStyle(color: Colors.white),),
               backgroundColor: Colors.black,

      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            SizedBox(
              height: 250.h,
              child: LineChart(
                LineChartData(
                  gridData:const  FlGridData(show: true),
                  titlesData: const FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true),
                    ),
                  ),
                  borderData: FlBorderData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 1),
                        const FlSpot(1, 2),
                        const FlSpot(2, 1.5),
                        const FlSpot(3, 2.2),
                        const FlSpot(4, 1.8),
                      ],
                      isCurved: true,
                      color: ColorManager.black,
                      barWidth: 4,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
