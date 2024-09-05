import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});
  final List<UserInfoModel> users = const [
    UserInfoModel(
      image: Assets.imagesAvatar2,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      name: "Josua Nunito",
      email: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users.map((e) {
          return IntrinsicWidth(child: UserInfoListTile(user: e));
        }).toList(),
      ),
    );
    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: users.length,
    //   itemBuilder: (context, index) {
    //     return IntrinsicWidth(child: UserInfoListTile(user: users[index]));
    //   },
    // );
  }
}
