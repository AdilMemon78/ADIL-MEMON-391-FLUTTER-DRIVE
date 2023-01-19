import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class chart extends StatefulWidget {
  const chart({super.key});

  @override
  State<chart> createState() => _chartState();
}

class _chartState extends State<chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <SplineSeries<SalesData, String>>[
          SplineSeries<SalesData, String>(
              color: Color.fromARGB(255, 98, 96, 96),
              width: 3,
              dataSource: <SalesData>[
                SalesData(100, 'mon'),
                SalesData(20, 'thu'),
                SalesData(40, 'wed'),
                SalesData(15, 'fri'),
                SalesData(9, 'sat'),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.sales, this.year);

  final String year;
  final int sales;
}
