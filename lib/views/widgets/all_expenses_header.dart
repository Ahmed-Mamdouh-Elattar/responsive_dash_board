import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "All Expenses",
          style: AppStyle.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xffF1F1F1),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              const Text(
                "Monthly",
                style: AppStyle.styleMedium16,
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff064061),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
