import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, baseFontSize: 24),
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      color: const Color(0xffFFFFFF),
    );
  }
}

double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * 0.8;
  double upperLimit = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktob) {
    return width / 900;
  } else {
    return width / 1400;
  }
}
