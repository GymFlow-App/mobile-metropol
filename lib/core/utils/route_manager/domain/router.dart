import 'package:flutter/cupertino.dart';
import 'package:metropol/core/utils/route_manager/domain/page_route_list.dart';
import 'package:metropol/product/widgets/metropol_scaffold.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppPageRoute.drawerPageRoute:
      return CupertinoPageRoute(builder: (_) => const MetropolScaffold());
    default:
      return CupertinoPageRoute(builder: (_) => const MetropolScaffold());
  }
}
