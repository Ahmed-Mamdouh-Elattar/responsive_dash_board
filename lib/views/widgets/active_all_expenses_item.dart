import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class ActiveAllExpenseItem extends StatelessWidget {
  const ActiveAllExpenseItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isActive: true,
            icon: allExpensesItemModel.icon,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyle.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyle.styleRegular14
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyle.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
