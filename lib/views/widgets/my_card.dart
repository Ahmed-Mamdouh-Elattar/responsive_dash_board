import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesCardBackgroud,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 31, right: 45),
                minVerticalPadding: 0,
                title: Text(
                  "Name card",
                  style: AppStyle.styleRegular16.copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: const Text(
                  "Syah Bandi",
                  style: AppStyle.styleMedium20,
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyle.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyle.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
          ],
        ),
      ),
    );
  }
}
