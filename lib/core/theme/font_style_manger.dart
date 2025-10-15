import 'package:flutter/material.dart';
import 'package:otex_app/core/theme/app_colors.dart';

import 'font_manger.dart';


TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight);
}


TextStyle getLightStyle(
    {double fontSize = FontSize.s18,  Color color=AppColors.black}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// font weight --> 400
TextStyle getRegularStyle(
    {double fontSize = FontSize.s18,  Color color=AppColors.black}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// font weight --> 500
TextStyle getMediumStyle(
    {double fontSize = FontSize.s18,  Color color=AppColors.black}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// font weight --> 600
TextStyle getBoldStyle({double fontSize = FontSize.s18,  Color color=AppColors.black}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

// font weight --> 700
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s18,  Color color=AppColors.black}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}