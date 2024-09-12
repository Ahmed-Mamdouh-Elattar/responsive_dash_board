import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(child: AllExpenseeAndQuickInvoiceSection()),
      SliverToBoxAdapter(child: MyCardAndTransactionHistory()),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 24,
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: IncomeSection(),
      ),
    ]);
  }
}
