import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.icon,
    required this.isActive,
  });

  final String icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                backgroundColor: isActive
                    ? Colors.white.withOpacity(0.1)
                    : const Color(0xffFAFAFA),
                child: Center(
                  child: SvgPicture.asset(
                    icon,
                    colorFilter: ColorFilter.mode(
                      isActive ? Colors.white : const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Flexible(
          child: Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: isActive ? Colors.white : const Color(0xff064061),
            ),
          ),
        ),
      ],
    );
  }
}
