import 'package:flutter/material.dart';
import 'package:metropol/core/shared/app_widget_state_builder.dart';
import 'package:metropol/core/shared/enum/widget_type.dart';
import 'package:metropol/core/utils/base_viewmodel.dart';
import 'package:metropol/core/utils/ui_state.dart';
import 'package:provider/provider.dart';

class SelectorAppWidgetStateBuilder<T extends BaseViewModel, K> extends StatelessWidget {
  SelectorAppWidgetStateBuilder._({
    super.key,
    required this.selector,
    required this.builder,
    this.idleWidget,
    this.loadingWidget,
    this.errorWidget,
    required WidgetType widgetType,
  }) {
    _type = widgetType;
  }

  final Widget Function(K) builder;
  final UIState<K> Function(BuildContext, T) selector;
  final Widget? idleWidget;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  late final WidgetType _type;

  factory SelectorAppWidgetStateBuilder.none({
    required Widget Function(K) builder,
    required UIState<K> Function(BuildContext, T) selector,
    Widget? idleWidget,
    Widget? loadingWidget,
    Widget? errorWidget,
  }) {
    return SelectorAppWidgetStateBuilder._(
      builder: builder,
      selector: selector,
      idleWidget: idleWidget,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
      widgetType: WidgetType.none,
    );
  }

  factory SelectorAppWidgetStateBuilder.sliver({
    required Widget Function(K) builder,
    required UIState<K> Function(BuildContext, T) selector,
    Widget? idleWidget,
    Widget? loadingWidget,
    Widget? errorWidget,
  }) {
    return SelectorAppWidgetStateBuilder._(
      builder: builder,
      selector: selector,
      idleWidget: idleWidget,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
      widgetType: WidgetType.sliver,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Selector<T, UIState<K>>(
      selector: selector,
      builder: (context, UIState<K> response, child) {
        switch (_type) {
          case WidgetType.none:
            return AppWidgetBuilderByState<K>.none(
              errorWidget: errorWidget,
              idleWidget: idleWidget,
              loadingWidget: loadingWidget,
              response: response,
              builder: builder,
            );
          case WidgetType.sliver:
            return AppWidgetBuilderByState<K>.sliver(
              errorWidget: errorWidget,
              idleWidget: idleWidget,
              loadingWidget: loadingWidget,
              response: response,
              builder: builder,
            );
        }
      },
    );
  }
}
