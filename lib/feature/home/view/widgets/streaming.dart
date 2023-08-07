import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/shared/app_sized_box.dart';
import 'package:metropol/core/shared/app_text.dart';
import 'package:metropol/feature/home/view/widgets/streaming_list/streaming_list_view_builder.dart';

class Streaming extends StatelessWidget {
  const Streaming({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: 1 > 0,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: AppColors().dark,
              height: 40.h,
              child: Align(
                alignment: const Alignment(-.94, 0),
                child: AppText.bodySmall(
                  "Yayın Akışı",
                ),
              ),
            ),
            AppSizedBox(height: 16.h),
            const StreamingListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
