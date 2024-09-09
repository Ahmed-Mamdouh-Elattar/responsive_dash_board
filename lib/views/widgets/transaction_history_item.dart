import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyle.styleRegular16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyle.styleSemiBold16.copyWith(
            color: transactionHistoryModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
