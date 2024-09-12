import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';

import 'package:responsive_dash_board/views/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const DashBoardMobileLayout(),
      tabletLayout: (context) => const DashBoardTabletLayout(),
      desktopLayout: (context) => const DashBoardDesktopLayout(),
    );
  }
}
