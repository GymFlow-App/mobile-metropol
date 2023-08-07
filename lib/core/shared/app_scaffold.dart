import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, this.appBar, this.body, this.drawer});
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      drawer: drawer,
    );
  }
}
