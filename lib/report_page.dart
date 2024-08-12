import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'notification.dart';
import 'home.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
                const Text(
                  'Report Page',
                  style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.notification_add, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationPage()),
                    );
                  },
                ),
              ],
            ),
            Expanded(
              child: SfCartesianChart(
                margin: EdgeInsets.zero,
                primaryXAxis: CategoryAxis(
                  title: AxisTitle(text: 'Days', textStyle: TextStyle(fontSize: 14, color: Colors.white)),
                  labelRotation: 45,
                  majorGridLines: MajorGridLines(width: 0),
                ),
                primaryYAxis: NumericAxis(
                  title: AxisTitle(text: 'Number of Medicines', textStyle: TextStyle(fontSize: 14, color: Colors.white)),
                  majorGridLines: MajorGridLines(width: 0),
                ),
                series: <ChartSeries>[
                  LineSeries<ChartData, String>(
                    dataSource: getChartData(),
                    xValueMapper: (ChartData data, _) => data.day,
                    yValueMapper: (ChartData data, _) => data.medicineCount,
                    name: 'Medicine Intake',
                    color: Colors.amber,
                    width: 2, // Line width
                    markerSettings: MarkerSettings(
                      isVisible: true,
                      color: Colors.amber,
                      borderWidth: 2,
                    ),
                  ),
                ],
                tooltipBehavior: TooltipBehavior(enable: true),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<ChartData> getChartData() {
    return [
      ChartData('Day 1', 2),
      ChartData('Day 2', 4),
      ChartData('Day 3', 3),
      ChartData('Day 4', 5),
      ChartData('Day 5', 6),
      ChartData('Day 6', 7),
    ];
  }
}

class ChartData {
  ChartData(this.day, this.medicineCount);

  final String day;
  final double medicineCount;
}
