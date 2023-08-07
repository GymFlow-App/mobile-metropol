import 'package:flutter/material.dart';
import 'package:metropol/core/constants/asset_paths.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/shared/app_icon.dart';

class LiveBroadCast extends StatelessWidget {
  const LiveBroadCast({super.key});

  @override
  Widget build(BuildContext context) {
    return AppIcon(
      height: 250.h,
      fit: BoxFit.fitHeight,
      assetPath: AssetPaths().posterJPG,
    );
  }
}
