import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/helper/edge_insets_helper.dart';
import 'package:metropol/core/shared/app_text.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final Widget? buttonIcon;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  final AlignmentGeometry? alignment;
  final bool isShadow;
  final BorderRadiusGeometry? borderRadius;
  final bool isRight;
  final Color? borderColor;
  final TextStyle? textStyle;
  final Gradient? gradient;
  final BoxBorder? border;

  late final ButtonType _buttonType;

  AppButton._({
    Key? key,
    this.onTap,
    this.buttonColor,
    this.buttonTextColor,
    this.buttonIcon,
    this.textStyle,
    this.margin,
    this.padding,
    this.alignment,
    this.borderColor,
    this.borderRadius,
    this.gradient,
    this.border,
    this.isShadow = true,
    this.isRight = false,
    required this.buttonText,
    required ButtonType buttonType,
  }) : super(key: key) {
    _buttonType = buttonType;
  }

  factory AppButton.standart({
    required String buttonText,
    bool isShadow = true,
    Color? buttonColor,
    Color? buttonTextColor,
    BorderRadiusGeometry? borderRadius,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    TextStyle? textStyle,
    Gradient? gradient,
    Color? borderColor,
    void Function()? onTap,
  }) {
    return AppButton._(
      onTap: onTap,
      buttonText: buttonText,
      buttonColor: buttonColor,
      margin: margin,
      padding: padding,
      alignment: alignment,
      isShadow: isShadow,
      gradient: gradient,
      textStyle: textStyle,
      borderColor: borderColor,
      borderRadius: borderRadius,
      buttonTextColor: buttonTextColor,
      buttonType: ButtonType.standart,
    );
  }
  factory AppButton.outline({
    required String buttonText,
    bool isShadow = true,
    Color? buttonColor,
    Color? buttonTextColor,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    TextStyle? textStyle,
    Color? borderColor,
    Widget? buttonIcon,
    BoxBorder? border,
    bool isRight = false,
    void Function()? onTap,
  }) {
    return AppButton._(
      onTap: onTap,
      buttonText: buttonText,
      buttonColor: buttonColor,
      margin: margin,
      padding: padding,
      alignment: alignment,
      isShadow: isShadow,
      borderRadius: borderRadius,
      buttonTextColor: buttonTextColor,
      textStyle: textStyle,
      borderColor: borderColor,
      border: border,
      buttonIcon: buttonIcon,
      isRight: isRight,
      buttonType: ButtonType.outline,
    );
  }

  factory AppButton.icon({
    required String buttonText,
    Color? buttonColor,
    Color? buttonTextColor,
    TextStyle? textStyle,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    Color? borderColor,
    Widget? buttonIcon,
    bool isRight = false,
    void Function()? onTap,
  }) {
    return AppButton._(
      onTap: onTap,
      buttonText: buttonText,
      buttonColor: buttonColor,
      margin: margin,
      padding: padding,
      textStyle: textStyle,
      borderRadius: borderRadius,
      borderColor: borderColor,
      buttonTextColor: buttonTextColor,
      buttonIcon: buttonIcon,
      isRight: isRight,
      buttonType: ButtonType.icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_buttonType) {
      case ButtonType.standart:
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonColor ?? AppColors().red,
              gradient: gradient,
              border: borderColor != null ? Border.all(color: borderColor ?? AppColors().orange) : null,
              borderRadius: borderRadius ?? BorderRadius.circular(4.r),
            ),
            padding: padding,
            margin: margin,
            alignment: alignment ?? Alignment.center,
            child: AppText.headline5(
              buttonText,
              color: buttonTextColor,
              textStyle: textStyle?.copyWith(
                color: buttonTextColor,
              ),
            ),
          ),
        );
      case ButtonType.outline:
        return GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: buttonColor ?? AppColors().transparent,
              border: border ?? Border.all(color: borderColor ?? AppColors().white, width: .5),
              borderRadius: borderRadius ?? BorderRadius.circular(4.r),
            ),
            padding: padding,
            margin: margin,
            alignment: alignment,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                !isRight ? (buttonIcon ?? const SizedBox.shrink()) : const SizedBox.shrink(),
                Padding(
                  padding: buttonIcon == null ? EdgeInsets.zero : REdgeInsets.only(left: !isRight ? 10.0 : 0, right: isRight ? 10.0 : 0),
                  child: AppText.headline5(
                    buttonText,
                    textStyle: textStyle?.copyWith(
                      color: buttonTextColor,
                    ),
                    color: buttonTextColor,
                  ),
                ),
                isRight ? (buttonIcon ?? const SizedBox.shrink()) : const SizedBox.shrink(),
              ],
            ),
          ),
        );
      case ButtonType.icon:
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(4.r),
              color: buttonColor ?? AppColors().orange,
              border: borderColor != null ? Border.all(color: borderColor ?? buttonColor ?? AppColors().orange, width: 1.w) : null,
            ),
            alignment: alignment ?? Alignment.center,
            margin: margin,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                !isRight ? (buttonIcon ?? const SizedBox.shrink()) : const SizedBox.shrink(),
                Padding(
                  padding: REdgeInsets.only(left: !isRight ? 10.0 : 0, right: isRight ? 10.0 : 0),
                  child: AppText.buttonMedium(
                    buttonText,
                    textStyle: textStyle?.copyWith(
                      color: buttonTextColor,
                    ),
                    color: buttonTextColor,
                  ),
                ),
                isRight ? (buttonIcon ?? const SizedBox.shrink()) : const SizedBox.shrink(),
              ],
            ),
          ),
        );
    }
  }
}

enum ButtonType { standart, outline, icon }
