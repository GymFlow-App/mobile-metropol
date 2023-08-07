import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key, this.widget});
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return widget ?? const SizedBox.shrink();
  }
}
