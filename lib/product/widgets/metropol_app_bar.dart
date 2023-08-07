import 'package:flutter/material.dart';
import 'package:metropol/core/constants/asset_paths.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/shared/app_icon.dart';

class MetropolAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MetropolAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: Scaffold.of(context).openDrawer,
        icon: Icon(
          Icons.menu,
          color: AppColors().softWhite,
        ),
      ),
      title: AppIcon(
        assetPath: AssetPaths().appLogoJPG,
        height: 40.h,
        width: 120.w,
      ),
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors().dark,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
