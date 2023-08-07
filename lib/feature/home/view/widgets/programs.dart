import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/helper/edge_insets_helper.dart';
import 'package:metropol/core/shared/app_sized_box.dart';
import 'package:metropol/core/shared/app_text.dart';
import 'package:metropol/feature/home/view/widgets/program_list/program_list_view_builder.dart';

class Programs extends StatelessWidget {
  const Programs({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Program sayısına göre burası gizlenmelidir.
    return Visibility(
      visible: 1 > 0,
      child: Container(
        color: AppColors().dark,
        width: double.infinity,
        padding: REdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Align(
              alignment: const Alignment(-.94, 0),
              child: AppText.bodySmall(
                "Programlar",
              ),
            ),
            AppSizedBox(height: 16.h),
            const ProgramListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
