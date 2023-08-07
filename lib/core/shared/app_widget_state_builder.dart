// import 'package:flutter/material.dart';
// import 'package:gymflow_mobile/core/extensions/string_extension.dart';
// import 'package:gymflow_mobile/core/extensions/widget_extension.dart';
// import 'package:gymflow_mobile/core/shared/app_text.dart';
// import 'package:gymflow_mobile/core/utils/ui_state.dart';

import 'package:flutter/material.dart';
import 'package:metropol/core/extension/string_extension.dart';
import 'package:metropol/core/extension/widget_extension.dart';
import 'package:metropol/core/shared/app_text.dart';
import 'package:metropol/core/shared/enum/widget_type.dart';
import 'package:metropol/core/utils/ui_state.dart';

class AppWidgetBuilderByState<T> extends StatelessWidget {
  AppWidgetBuilderByState._({
    super.key,
    required this.response,
    required this.builder,
    this.idleWidget,
    this.loadingWidget,
    this.errorWidget,
    required WidgetType widgetType,
  }) {
    _type = widgetType;
  }

  final UIState<T> response;
  final Widget Function(T) builder;
  final Widget? idleWidget;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  late final WidgetType _type;

  factory AppWidgetBuilderByState.none({
    required UIState<T> response,
    required Widget Function(T) builder,
    Widget? idleWidget,
    Widget? loadingWidget,
    Widget? errorWidget,
  }) {
    return AppWidgetBuilderByState._(
      response: response,
      builder: builder,
      idleWidget: idleWidget,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
      widgetType: WidgetType.none,
    );
  }

  factory AppWidgetBuilderByState.sliver({
    required UIState<T> response,
    required Widget Function(T) builder,
    Widget? idleWidget,
    Widget? loadingWidget,
    Widget? errorWidget,
  }) {
    return AppWidgetBuilderByState._(
      response: response,
      builder: builder,
      idleWidget: idleWidget,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
      widgetType: WidgetType.sliver,
    );
  }
  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case WidgetType.none:
        switch (response.status) {
          case UIStateStatus.idle:
            return idleWidget ?? const SizedBox.shrink();
          case UIStateStatus.loading:
            return loadingWidget ?? const CircularProgressIndicator.adaptive();
          case UIStateStatus.success:
            return builder(response.data as T);
          case UIStateStatus.error:
            return Center(child: errorWidget ?? AppText.bodyMedium((response.failure?.message).getValueOrDefault));
        }

      case WidgetType.sliver:
        switch (response.status) {
          case UIStateStatus.idle:
            return (idleWidget ?? const SizedBox.shrink()).toSliver;
          case UIStateStatus.loading:
            return (loadingWidget ?? const CircularProgressIndicator.adaptive()).toSliver;
          case UIStateStatus.success:
            return builder(response.data as T);
          case UIStateStatus.error:
            return Center(child: errorWidget ?? AppText.bodyMedium((response.failure?.message).getValueOrDefault)).toSliver;
        }
    }
  }
}
