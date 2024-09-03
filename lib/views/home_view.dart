import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: HomeViewBody(),
    );
  }
}
