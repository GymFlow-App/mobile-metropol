import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key? key,
    required this.assetPath,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  final String assetPath;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit fit;
  @override
  Widget build(BuildContext context) {
    if (assetPath.startsWith("http")) {
      if (assetPath.endsWith(".svg")) {
        return SvgPicture.network(
          assetPath,
          height: height,
          width: width,
          fit: fit,
        );
      } else {
        return Image.network(
          assetPath,
          color: color,
          height: height,
          width: width,
          fit: fit,
        );
      }
    } else {
      if (assetPath.endsWith(".svg")) {
        return SvgPicture.asset(
          assetPath,
          color: color,
          //colorFilter: ColorFilter.mode(color!, BlendMode.clear),
          height: height,
          width: width,
          fit: fit,
        );
      } else {
        return Image.asset(
          assetPath,
          height: height,
          width: width,
          color: color,
          fit: fit,
        );
      }
    }
  }
}
