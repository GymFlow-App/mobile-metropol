import 'package:flutter/material.dart';
import 'package:metropol/core/shared/app_sized_box.dart';
import 'package:metropol/feature/home/view/widgets/exchange_rate_information.dart';
import 'package:metropol/feature/home/view/widgets/live_broadcast.dart';
import 'package:metropol/feature/home/view/widgets/programs.dart';
import 'package:metropol/feature/home/view/widgets/streaming.dart';
import 'package:metropol/product/widgets/metropol_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const MetropolBody(
      afterBreakingNews: LiveBroadCast(),
      afterBanner: Column(
        children: [
          ExchangeRateInformation(),
          AppSizedBox(height: 32),
          Programs(),
          AppSizedBox(height: 16),
          Streaming(),
        ],
      ),
    );
  }
}
