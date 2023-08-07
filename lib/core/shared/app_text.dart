import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_text_styles.dart';

class AppText extends StatelessWidget {
  AppText._(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.textStyle,
    required AppTextStyles appTextStyles,
  }) : super(key: key) {
    _appTextStyles = appTextStyles;
  }
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final TextStyle? textStyle;
  late final AppTextStyles _appTextStyles;

  factory AppText.headlineLarge(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      textStyle: textStyle,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.headlineLarge,
    );
  }

  factory AppText.headlineBold(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      textStyle: textStyle,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.headlineBold,
    );
  }

  factory AppText.headlineMedium(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      textStyle: textStyle,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.headlineMedium,
    );
  }

  factory AppText.headline1(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      textStyle: textStyle,
      decoration: decoration,
      appTextStyles: AppTextStyles.headline1,
    );
  }

  factory AppText.headline2(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.headline2,
    );
  }

  factory AppText.headline3(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.headline3,
    );
  }

  factory AppText.headline4(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.headline4,
    );
  }

  factory AppText.headline5(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextStyle? textStyle,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      textStyle: textStyle,
      appTextStyles: AppTextStyles.headline5,
    );
  }

  factory AppText.headline6(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.headline6,
    );
  }

  factory AppText.buttonLarge(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.buttonLarge,
    );
  }

  factory AppText.buttonMedium(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      textStyle: textStyle,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.buttonMedium,
    );
  }

  factory AppText.buttonSmall(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.buttonSmall,
    );
  }

  factory AppText.bodyLarge(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.bodyLarge,
    );
  }

  factory AppText.bodyMedium(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.bodyMedium,
    );
  }

  factory AppText.bodySmall(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.bodySmall,
    );
  }

  factory AppText.bodySmaller(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.bodySmaller,
    );
  }

  factory AppText.labelLarge(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.labelLarge,
    );
  }
  factory AppText.labelMedium(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.labelMedium,
    );
  }

  factory AppText.labelSmall(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.labelSmall,
    );
  }

  factory AppText.labelSmaller(String text,
      {Color? color,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? overflow,
      double? fontSize,
      FontWeight? fontWeight,
      double? height,
      TextDecoration? decoration}) {
    return AppText._(
      text,
      color: color,
      textAlign: textAlign,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      appTextStyles: AppTextStyles.labelSmaller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            decoration: decoration,
            height: height,
          ) ??
          _appTextStyles.getTextStyle.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            decoration: decoration,
            height: height,
          ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
