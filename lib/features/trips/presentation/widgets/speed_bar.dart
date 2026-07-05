
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SpeedChart extends StatelessWidget {
  const SpeedChart({
    super.key,
    required this.speeds,
  });

  final List<double> speeds;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 250,
          child: LineChart(

            LineChartData(
              minY: 0,
              maxY: 200,

              gridData: FlGridData(show: true),

              borderData: FlBorderData(show: true),

              titlesData: FlTitlesData(
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),

                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 35,
                    interval: 20,
                  ),
                ),

                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      return Text(
                        "${value.toInt() * 5}m",
                        style: const TextStyle(fontSize: 10),
                      );
                    },
                  ),
                ),
              ),

              lineBarsData: [
                LineChartBarData(
                  spots: List.generate(
                    speeds.length,
                        (index) => FlSpot(
                      index.toDouble(),
                      speeds[index],
                    ),
                  ),

                  isCurved: true,
                  barWidth: 4,
                  dotData: const FlDotData(show: true),
                  belowBarData: BarAreaData(show: true),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

