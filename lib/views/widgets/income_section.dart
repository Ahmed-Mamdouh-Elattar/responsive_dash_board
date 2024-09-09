import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

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
        ],
      ),
    );
  }
}
