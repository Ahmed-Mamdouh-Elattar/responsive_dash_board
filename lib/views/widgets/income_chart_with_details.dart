import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_item_details_list.dart';

class IncomeChartWithDetails extends StatefulWidget {
  const IncomeChartWithDetails({
    super.key,
  });

  @override
  State<IncomeChartWithDetails> createState() => _IncomeChartWithDetailsState();
}

class _IncomeChartWithDetailsState extends State<IncomeChartWithDetails> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: IncomeChart(
              activeIndex: activeIndex,
              touchCallback: (p0, pieTouchResponse) {
                activeIndex =
                    pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
                setState(() {});
              },
            )),
        Expanded(
          flex: 2,
          child: IncomeItemDetailsList(
            onEnter: (index) {
              activeIndex = index;

              setState(() {});
            },
            onExit: (p0) {
              activeIndex = -1;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
