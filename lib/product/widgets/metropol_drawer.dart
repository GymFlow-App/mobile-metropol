import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/init/injection_container.dart';
import 'package:metropol/core/shared/app_text.dart';
import 'package:metropol/core/utils/screen_size.dart';
import 'package:metropol/product/domain/enum/category_enum.dart';
import 'package:metropol/product/viewmodel/drawer_viewmodel.dart';

class MetropolDrawer extends StatelessWidget {
  const MetropolDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors().dark,
      width: ScreenSize().getWidthPercent(.5),
      child: ListView(
        children: CategoryEnum.values
            .map(
              (item) => ListTile(
                onTap: () => serviceLocator<DrawerViewModel>().selectCategory(item),
                title: AppText.bodyMedium(
                  item.name,
                  color: AppColors().softWhite,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
