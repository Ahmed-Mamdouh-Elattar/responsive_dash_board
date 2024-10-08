import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class AllExpenseeAndQuickInvoiceSection extends StatelessWidget {
  const AllExpenseeAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
