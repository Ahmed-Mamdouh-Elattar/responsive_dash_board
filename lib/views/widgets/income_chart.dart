import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key, this.activeIndex = -1, this.touchCallback});
  final int activeIndex;
  final void Function(FlTouchEvent, PieTouchResponse?)? touchCallback;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: touchCallback,
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xff208CC8),
            value: 40,
            radius: activeIndex == 0 ? 30 : 20,
          ),
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xff4EB7F2),
            value: 25,
            radius: activeIndex == 1 ? 30 : 20,
          ),
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xff064061),
            value: 20,
            radius: activeIndex == 2 ? 30 : 20,
          ),
          PieChartSectionData(
            radius: activeIndex == 3 ? 30 : 20,
            showTitle: false,
            color: const Color(0xffE2DECD),
            value: 22,
          ),
        ]);
  }
}
