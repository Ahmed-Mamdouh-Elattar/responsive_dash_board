import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer_item.dart';

class CustomDrawerItemList extends StatefulWidget {
  const CustomDrawerItemList({
    super.key,
  });

  @override
  State<CustomDrawerItemList> createState() => _CustomDrawerItemListState();
}

class _CustomDrawerItemListState extends State<CustomDrawerItemList> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      image: Assets.imagesDashBoard,
      title: "Dashboard",
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransaction,
      title: "My Transaction",
    ),
    DrawerItemModel(
      image: Assets.imagesStatistcs,
      title: "Statistics",
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: "My Investments",
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            activeIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomDrawerItem(
            isActive: activeIndex == index,
            drawerItemModel: drawerItems[index],
          ),
        ),
      ),
    );
  }
}
