import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_model.dart';
import 'package:responsive_dash_board/views/widgets/active_all_expenses_item.dart';
import 'package:responsive_dash_board/views/widgets/inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpenseItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpenseItem(allExpensesItemModel: allExpensesItemModel);
  }
}
