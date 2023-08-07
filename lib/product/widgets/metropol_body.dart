import 'package:flutter/material.dart';
import 'package:metropol/core/extension/context_extension.dart';
import 'package:metropol/core/shared/app_sized_box.dart';
import 'package:metropol/core/shared/app_widget.dart';
import 'package:metropol/product/widgets/metropol_body_widgets/metropol_banner.dart';
import 'package:metropol/product/widgets/metropol_body_widgets/metropol_breaking_news.dart';
import 'package:metropol/product/widgets/metropol_body_widgets/metropol_footer.dart';

class MetropolBody extends StatelessWidget {
  const MetropolBody({super.key, required this.afterBreakingNews, required this.afterBanner});
  final Widget? afterBreakingNews;
  final Widget? afterBanner;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MetropolBanner(),
          const MetropolBreakingNews(),
          AppWidget(widget: afterBreakingNews),
          const MetropolBanner(),
          AppWidget(widget: afterBanner),
          const AppSizedBox(height: 16),
          const MetropolFooter(),
          AppSizedBox(height: context.viewPaddingBottom),
        ],
      ),
    );
  }
}
