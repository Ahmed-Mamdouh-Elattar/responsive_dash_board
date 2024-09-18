import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/widgets/custom_header.dart';

import 'package:responsive_dash_board/views/widgets/all_expenses_item_list.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          CustomHeader(
            title: "All Expenses",
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemList(),
        ],
      ),
    );
  }
}
