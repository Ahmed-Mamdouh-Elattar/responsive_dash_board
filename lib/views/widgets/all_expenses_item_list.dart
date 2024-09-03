import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        icon: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        icon: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  updateSelectedItem(index);
                },
                child: AllExpensesItem(
                  allExpensesItemModel: e.value,
                  isActive: selectedItem == index,
                ),
              ),
            ),
          );
        }
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateSelectedItem(index);
            },
            child: AllExpensesItem(
              allExpensesItemModel: e.value,
              isActive: selectedItem == index,
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateSelectedItem(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}
