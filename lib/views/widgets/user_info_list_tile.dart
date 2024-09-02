import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesAvatar3),
        title: const Text(
          "Lekan Okeowo",
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: const Text(
          "demo@gmail.com",
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
