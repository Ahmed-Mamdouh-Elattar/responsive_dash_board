import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';

import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.user});
  final UserInfoModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(user.image),
          title: Text(
            user.name,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(
            user.email,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
