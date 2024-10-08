import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';

import 'package:responsive_dash_board/views/widgets/my_card_with_transaction_history_and_income_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 4,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child: AllExpenseeAndQuickInvoiceSection()),
          ]),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 3, child: MyCardWithTransactionHistoryAndIncomeSection())
      ],
    );
  }
}
