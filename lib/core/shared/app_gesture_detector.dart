import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';

class AppGestureDetector extends StatelessWidget {
  const AppGestureDetector({super.key, required this.child, this.onTap});
  final Widget child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors().transparent,
      focusColor: AppColors().transparent,
      highlightColor: AppColors().transparent,
      onTap: onTap,
      child: child,
    );
  }
}
