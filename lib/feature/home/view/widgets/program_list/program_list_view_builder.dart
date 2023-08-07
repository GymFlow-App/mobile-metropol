import 'package:flutter/material.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/shared/app_icon.dart';
import 'package:metropol/core/shared/app_sized_box.dart';

class ProgramListViewBuilder extends StatelessWidget {
  const ProgramListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => AppIcon(
          width: 120.w,
          height: 180.h,
          assetPath: "https://media.metropoltv.com.tr/posterler/dikey/637f2e2006c17.jpg",
          fit: BoxFit.fill,
        ),
        itemCount: 8,
        separatorBuilder: (BuildContext context, int index) {
          return const AppSizedBox(width: 16);
        },
      ),
    );
  }
}
