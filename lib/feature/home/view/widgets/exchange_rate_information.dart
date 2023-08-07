import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/helper/edge_insets_helper.dart';
import 'package:metropol/core/shared/app_text.dart';

class ExchangeRateInformation extends StatelessWidget {
  const ExchangeRateInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors().dark,
      padding: REdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          AppText.bodySmall("GRAM ALTIN"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText.bodySmall("1.062"),
            ],
          ),
        ],
      ),
    );
  }
}
