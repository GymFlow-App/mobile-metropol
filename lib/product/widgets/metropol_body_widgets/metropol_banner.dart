import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/shared/app_text.dart';

class MetropolBanner extends StatelessWidget {
  const MetropolBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      color: AppColors().darkGray2,
      alignment: Alignment.center,
      child: AppText.bodyMedium("Banner Alanı"),
    );
  }
}
