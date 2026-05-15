
import 'package:black_box/features/analysis/nav_button.dart';
import 'package:black_box/features/analysis/square_arrow_icon.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../core/theme/app_color.dart';

class Analysis extends StatefulWidget {
  const Analysis({super.key});
  @override
  State<Analysis> createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {

  PageController pageController = PageController();
  int position = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainRedColor,

      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                      icon: Icon(Icons.arrow_back, color: Colors.white)
                  ),
                  Text("Analysis", style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  const CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.notifications_none, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20.0),
              height: 120,
              width: MediaQuery.sizeOf(context).width,

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SquareArrowIcon(label: "Total Active Cars",iconColor: Colors.white, value: '1', arrowAngle: 140, valueColor: Colors.white,onlyIcon: false,),
                  SizedBox(height:60,child: VerticalDivider(color: Colors.white,thickness: 1.5,)),
                  SquareArrowIcon(label: "Total Active Cars",iconColor: Colors.white, value: '8', arrowAngle: 220, valueColor: Colors.blue,onlyIcon: false,)
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      AnimatedContainer(
                        width: double.infinity,
                        height: 60,
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                        decoration: BoxDecoration(
                          color: Color(0xfff7dfdf),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NavButton(
                              text: "Daily",
                              background: position == 0 ? AppColor.mainRedColor  : Colors.transparent,
                              onPressed: (){
                                pageController.animateToPage(
                                  0,
                                  duration: Duration(milliseconds: 50),
                                  curve: Curves.bounceIn,
                                );
                                setState(() {
                                });
                                position = 0;
                              },
                            ),
                            NavButton(
                              text: "Weekly",
                              background: position == 1 ? AppColor.mainRedColor  : Colors.transparent,
                              onPressed: (){
                                pageController.animateToPage(
                                  1,
                                  duration: Duration(milliseconds: 50),
                                  curve: Curves.bounceIn,
                                );
                                setState(() {});
                                position = 1;
                              },
                            ),
                            NavButton(
                              text: "Monthly",
                              background: position == 2 ? AppColor.mainRedColor  : Colors.transparent,
                              onPressed: (){
                                pageController.animateToPage(
                                  2,
                                  duration: Duration(milliseconds: 50),
                                  curve: Curves.bounceIn,
                                );
                                setState(() {});
                                position = 2;
                              },
                            ),
                            NavButton(
                              text: "Yearly",
                              background: position == 3 ? AppColor.mainRedColor  : Colors.transparent,
                              onPressed: (){
                                pageController.animateToPage(
                                  3,
                                  duration: Duration(milliseconds: 50),
                                  curve: Curves.bounceIn,
                                );
                                setState(() {});
                                position = 3;
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      SizedBox(
                        height: 520,
                        child: PageView(
                          controller: pageController,
                          children: [
                            Column(
                              spacing: 25,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 300,
                                  padding: EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7DFDF),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Column(
                                        children: [
                                          Container(
                                            height: 280,
                                            width: double.infinity,
                                            padding: EdgeInsets.only(top: 10,bottom: 30,),
                                            /*child: AspectRatio(
                                              aspectRatio: 1,
                                              child: BarChart(
                                                BarChartData(
                                                  baselineY: 0,
                                                  gridData: FlGridData(
                                                     // verticalInterval: 1,
                                                    horizontalInterval: 2,
                                                    drawVerticalLine: false,
                                                    getDrawingHorizontalLine: (value) {
                                                      return FlLine(color: mainRedColor,strokeWidth: .5,dashArray: [3,2]);
                                                    },
                                                  ),
                                                  borderData: FlBorderData(
                                                    border: const Border(
                                                      bottom: BorderSide(width: 1,color: mainRedColor),
                                                    )
                                                  ),
                                                  groupsSpace: 20,
                                                  barGroups: [
                                                    BarChartGroupData(
                                                      x: 1,
                                                      barRods: [
                                                        BarChartRodData(
                                                          fromY: 0,
                                                          toY: 10,
                                                          width: 15,
                                                          color: mainRedColor,
                                                        ),
                                                      ]
                                                    ),
                                                    BarChartGroupData(
                                                      x: 2019,
                                      
                                                      barRods: [
                                                        BarChartRodData(
                                                          fromY: 0,
                                                          toY: 10,
                                                          width: 15,
                                                          color: mainRedColor,
                                                        ),
                                                      ]
                                                    ),
                                                    BarChartGroupData(
                                                      x: 18,
                                                      barRods: [
                                                        BarChartRodData(
                                                          fromY: 0,
                                                          toY: 10,
                                                          width: 15,
                                                          color: mainRedColor,
                                                        ),
                                                      ]
                                                    ),
                                                    BarChartGroupData(
                                                      x: 1,
                                                      barRods: [
                                                        BarChartRodData(
                                                          fromY: 0,
                                                          toY: 10,
                                                          width: 15,
                                                          color: mainRedColor,
                                                        ),
                                                      ]
                                                    ),
                                                    BarChartGroupData(
                                                      x: 1,
                                                      barRods: [
                                                        BarChartRodData(
                                                          fromY: 0,
                                                          toY: 5,
                                                          width: 15,
                                                          color: mainRedColor,
                                                        ),
                                      
                                                      ]
                                                    ),
                                      
                                                  ]
                                                ),
                                              ),
                                            ),*/
                                            child: SpeedRateChart(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 100,
                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          SquareArrowIcon(label: '', value: '', arrowAngle: 25, valueColor: Colors.red, iconColor: AppColor.mainRedColor,onlyIcon: true,),
                                          Text("Maximum Speed ",style: TextStyle(fontSize: 15),),
                                          Text("85km/H",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF2A0A0A)),)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100,

                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          SquareArrowIcon(label: '', value: '', arrowAngle: 25, valueColor: Colors.red, iconColor: AppColor.mainRedColor,onlyIcon: true,),
                                          Text("Maximum Speed ",style: TextStyle(fontSize: 15),),
                                          Text("85km/H",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF2A0A0A)),)
                                        ],
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}



class SpeedData {
  final String week;
  final double speed;

  SpeedData(this.week, this.speed);
}

class SpeedRateChart extends StatelessWidget {
  SpeedRateChart({super.key});

  final List<SpeedData> data = [
    SpeedData('Jan', 10000),
    SpeedData('Feb', 12000),
    SpeedData('Mar', 15000),
    SpeedData('Apr', 8000),
    SpeedData('May', 10000),
    SpeedData('Jun', 5000),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        child: SfCartesianChart(
          title: ChartTitle(
            text: 'Speed Rate',
            alignment: ChartAlignment.near,
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          // removes border around chart
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
            majorGridLines: const MajorGridLines(width: 0),
            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(size: 0),
          ),

          primaryYAxis: NumericAxis(
            minimum: 0,
            maximum: 15000,
            interval: 5000,

            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(size: 0),

            // 🔥 dotted lines like your design
            majorGridLines: const MajorGridLines(
              width: .35,
              dashArray: [4, 2],
              color: Colors.redAccent,
            ),
          ),

          series: <CartesianSeries>[
            ColumnSeries<SpeedData, String>(
              dataSource: data,
              xValueMapper: (d, _) => d.week,
              yValueMapper: (d, _) => d.speed,
              width: 0.38, // thinner bars
              spacing: 0.12,

              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),

              color: Colors.red[900],

              dataLabelSettings: const DataLabelSettings(
                isVisible: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
