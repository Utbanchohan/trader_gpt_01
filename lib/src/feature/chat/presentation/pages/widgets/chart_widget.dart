import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ChartContainer extends StatefulWidget {
  final List<double> data; 
  final List<String> categories; 

  const ChartContainer({Key? key, required this.data, required this.categories}) : super(key: key);

  @override
  _ChartContainerState createState() => _ChartContainerState();
}

class _ChartContainerState extends State<ChartContainer> {
  String selectedChartType = 'Pie';
  final List<String> chartTypes = ['Bar', 'Line', 'Pie'];

  @override
  Widget build(BuildContext context) {
    Widget chartWidget;
    switch (selectedChartType) {
      case 'Line':
        chartWidget =Sparkline(
                  data: widget.data,
                  
                  lineWidth: 2.0,
                  lineColor: 
                  // widget.stocks.changesPercentage < 0
                  //     ? AppColors.redFF3B3B
                  //     : 
                      AppColors.color06D54E,
                  pointsMode: PointsMode.none,
                  pointColor: Colors.white,
                  useCubicSmoothing: false,
                  sharpCorners: true,
                  fillMode: FillMode.below,
                  fillGradient:  LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.greenAccent.withOpacity(0.5)
                    , AppColors.color06D54E.withOpacity(0.1)],
                  ),
                );
        
        //  LineChart(
        //   LineChartData(
        //                   gridData: FlGridData(show: false), 
        //                   // borderData: FlBorderData(
        //                   //   border: Border.fromBorderSide)
        //                   // ),

        //     lineBarsData: [
        //       LineChartBarData(
        //         spots: widget.data.asMap().entries.map((e) => FlSpot(e.key.toDouble(), e.value)).toList(),
        //         isCurved: true,
        //         barWidth: 3,
        //         color: Colors.blue

        //       ),
        //     ],
        //   ),
        // );
        break;
      case 'Pie':
        chartWidget = PieChart(
          
          PieChartData(
            
            sections: widget.data.asMap().entries.map((e) {
              return PieChartSectionData(
                titleStyle: GoogleFonts.plusJakartaSans(color: AppColors.white,fontSize: 10,),
                value: e.value,
                // title: widget.categories[e.key],
                color: Colors.primaries[e.key % Colors.primaries.length],
              );
            }).toList(),
          ),
        );
        break;
      case 'Bar':
      default:
        chartWidget = BarChart(
          
          BarChartData(
            gridData:FlGridData(show: false) ,
            borderData:FlBorderData(show: false) ,
            barGroups: widget.data.asMap().entries.map((e) {
              return BarChartGroupData(
                x: e.key,
                barRods: [
                  BarChartRodData(
                    toY: e.value,
                    color: Colors.blue,
                  ),
                ],
              );
            }).toList(),
            // titlesData: FlTitlesData(
            //   bottomTitles: AxisTitles(
            //     sideTitles: SideTitles(
            //       showTitles: true,
            //       getTitlesWidget: (value, meta) {
            //         int idx = value.toInt();
            //         return MdSnsText(widget.categories[idx],color: AppColors.white,size: 10,);
            //       },
            //     ),
            //   ),
            // ),
          ),
        );
    }

    return Column(
      children: [
        DropdownButton<String>(
          dropdownColor:AppColors.primaryColor,
          
          value: selectedChartType,
          items: chartTypes.map((type) => DropdownMenuItem(value: type, child: Text(type))).toList(),
          onChanged: (value) {
            if (value != null) setState(() => selectedChartType = value);
          },
        ),
        SizedBox(height: 300, child: chartWidget),
      ],
    );
  }
}