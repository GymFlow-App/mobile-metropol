import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/helper/edge_insets_helper.dart';
import 'package:metropol/core/shared/app_sized_box.dart';
import 'package:metropol/core/shared/app_text.dart';

class MetropolBreakingNews extends StatelessWidget {
  const MetropolBreakingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: REdgeInsets.symmetric(vertical: 2),
      color: AppColors().red,
      child: Column(
        children: [
          Align(
            alignment: const Alignment(-.96, 0),
            child: AppText.labelSmall(
              "Son Dakika",
              fontWeight: FontWeight.bold,
            ),
          ),
          const AppSizedBox(height: 2),
          Container(
            width: double.infinity,
            color: AppColors().white,
            alignment: Alignment.center,
            child: AppText.bodySmaller(
              "Son Dakika Haberi Burada Olacak",
              color: AppColors().black,
            ),
          ),
        ],
      ),
    );
  }
}
