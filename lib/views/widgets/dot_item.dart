import 'package:flutter/material.dart';

class DotItem extends StatelessWidget {
  const DotItem({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
