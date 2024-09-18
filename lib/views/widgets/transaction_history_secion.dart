import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_items_list.dart';

class TransactionHistorysection extends StatelessWidget {
  const TransactionHistorysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyle.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const TransactionHistoryItemsList(),
      ],
    );
  }
}
