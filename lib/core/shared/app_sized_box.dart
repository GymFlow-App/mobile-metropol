import 'package:flutter/material.dart';
import 'package:metropol/core/extension/num_extension.dart';

class AppSizedBox extends StatelessWidget {
  const AppSizedBox({
    super.key,
    this.height = 0,
    this.width = 0,
    this.child,
  });
  final double height;
  final double width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: child,
    );
  }
}
