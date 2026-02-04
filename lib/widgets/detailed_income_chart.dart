import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChart();
}

class _DetailedIncomeChart extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (touchEvent, pieTouchResponse) {
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xFF208CC8),
          showTitle: false,
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xFF4EB7F2),
          showTitle: false,
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xFF064061),
          showTitle: false,
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xFFE2DECD),
          showTitle: false,
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
