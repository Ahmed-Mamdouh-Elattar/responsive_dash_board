import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/widgets/custom_header.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

import 'package:responsive_dash_board/views/widgets/income_chart_with_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          CustomHeader(title: "Income"),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: IncomeChartWithDetails(),
          ),
        ],
      ),
    );
  }
}
