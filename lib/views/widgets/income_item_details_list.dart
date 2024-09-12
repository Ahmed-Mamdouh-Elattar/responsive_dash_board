import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_dash_board/model/income_item_model.dart';
import 'package:responsive_dash_board/views/widgets/incom_item_details.dart';

class IncomeItemDetailsList extends StatelessWidget {
  const IncomeItemDetailsList({
    super.key,
    this.onEnter,
    this.onExit,
  });

  final void Function(int)? onEnter;
  final void Function(PointerExitEvent)? onExit;

  final List<IncomeItemModel> items = const [
    IncomeItemModel(
      index: 0,
      title: "Design service",
      value: "40%",
      color: Color(0xff208CC8),
    ),
    IncomeItemModel(
      index: 1,
      title: "Design product",
      value: "25%",
      color: Color(0xff4EB7F2),
    ),
    IncomeItemModel(
      index: 2,
      title: "Product royalti",
      value: "20%",
      color: Color(0xff064061),
    ),
    IncomeItemModel(
      index: 3,
      title: "Other",
      value: "40%",
      color: Color(0xffE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => Expanded(
                child: IncomItemDetails(
              incomeItemModel: e,
              onEnter: onEnter,
              onExit: onExit,
            )),
          )
          .toList(),
    );
  }
}
