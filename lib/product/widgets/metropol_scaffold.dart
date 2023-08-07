import 'package:flutter/material.dart';
import 'package:metropol/core/shared/app_icon.dart';
import 'package:metropol/core/shared/app_scaffold.dart';
import 'package:metropol/product/domain/enum/category_enum.dart';
import 'package:metropol/product/viewmodel/drawer_viewmodel.dart';
import 'package:metropol/product/widgets/metropol_app_bar.dart';
import 'package:metropol/product/widgets/metropol_drawer.dart';
import 'package:provider/provider.dart';

class MetropolScaffold extends StatelessWidget {
  const MetropolScaffold({super.key, this.afterBanner, this.afterBreakingNews});
  final Widget? afterBreakingNews;
  final Widget? afterBanner;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      drawer: const MetropolDrawer(),
      appBar: const MetropolAppBar(),
      body: Selector<DrawerViewModel, CategoryEnum>(
        selector: (context, provider) => provider.selectedCategory,
        builder: (context, CategoryEnum category, child) {
          return Stack(
            fit: StackFit.expand,
            children: [
              AppIcon(
                assetPath: category.background,
                fit: BoxFit.fill,
              ),
              category.child,
            ],
          );
        },
      ),
    );
  }
}
