import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history.dart';

class MyCardWithTransactionHistoryAndIncomeSection extends StatelessWidget {
  const MyCardWithTransactionHistoryAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
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
      ],
    );
  }
}
