import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/extension/num_extension.dart';

enum AppTextStyles {
  headlineLarge,
  headlineBold,
  headlineMedium,
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  buttonLarge,
  buttonMedium,
  buttonSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  bodySmaller,
  labelLarge,
  labelMedium,
  labelSmall,
  labelSmaller,
}

extension AppTextStylesExtension on AppTextStyles {
  TextStyle get getTextStyle {
    switch (this) {
      case AppTextStyles.headlineLarge:
        return TextStyle(
          fontSize: 40.sp,
          height: 1.2,
          color: AppColors().white,
          fontWeight: FontWeight.w700,
        );
      case AppTextStyles.headlineBold:
        return TextStyle(
          fontSize: 22.sp,
          height: 1.2,
          color: AppColors().white,
          fontWeight: FontWeight.w700,
        );
      case AppTextStyles.headlineMedium:
        return TextStyle(
          fontSize: 22.sp,
          height: 1.2,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.headline1:
        return TextStyle(
          fontSize: 20.sp,
          height: 1.2,
          color: AppColors().white,
          fontWeight: FontWeight.w700,
        );
      case AppTextStyles.headline2:
        return TextStyle(
          fontSize: 17.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.headline3:
        return TextStyle(
          fontSize: 15.sp,
          height: 1.3,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );

      case AppTextStyles.headline4:
        return TextStyle(
          fontSize: 14.sp,
          height: 1.42,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.headline5:
        return TextStyle(
          fontSize: 13.sp,
          height: 1.38,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.headline6:
        return TextStyle(
          fontSize: 8.sp,
          height: 2.64,
          color: AppColors().white,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyles.buttonLarge:
        return TextStyle(
          fontSize: 18.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.buttonMedium:
        return TextStyle(
          fontSize: 16.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.buttonSmall:
        return TextStyle(
          fontSize: 14.sp,
          height: 1.42,
          color: AppColors().white,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyles.bodyLarge:
        return TextStyle(
          fontSize: 18.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.bodyMedium:
        return TextStyle(
          fontSize: 16.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyles.bodySmall:
        return TextStyle(
          fontSize: 14.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w500,
        );
      case AppTextStyles.bodySmaller:
        return TextStyle(
          fontSize: 12.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyles.labelLarge:
        return TextStyle(
          fontSize: 26.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w700,
        );
      case AppTextStyles.labelMedium:
        return TextStyle(
          fontSize: 14.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyles.labelSmall:
        return TextStyle(
          fontSize: 12.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyles.labelSmaller:
        return TextStyle(
          fontSize: 8.sp,
          height: 1.25,
          color: AppColors().white,
          fontWeight: FontWeight.w400,
        );
    }
  }
}
