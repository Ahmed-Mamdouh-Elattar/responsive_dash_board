import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_dash_board/model/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IncomItemDetails extends StatelessWidget {
  const IncomItemDetails(
      {super.key, required this.incomeItemModel, this.onEnter, this.onExit});
  final IncomeItemModel incomeItemModel;
  final void Function(int)? onEnter;
  final void Function(PointerExitEvent)? onExit;

  get onFocusChange => null;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        onEnter!(incomeItemModel.index);
      },
      onExit: onExit,
      child: ListTile(
        onFocusChange: onFocusChange,
        leading: Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            color: incomeItemModel.color,
            shape: BoxShape.circle,
          ),
        ),
        title: Text(
          incomeItemModel.title,
          style: AppStyle.styleRegular16,
        ),
        trailing: Text(
          incomeItemModel.value,
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xff208CC8),
          ),
        ),
      ),
    );
  }
}
