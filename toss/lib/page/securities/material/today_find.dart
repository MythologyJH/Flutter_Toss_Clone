import 'package:flutter/material.dart';

import '../../../widget/container_divider.dart';
import 'best_community.dart';
import 'dividend_payout.dart';
import 'realtime_stock_chart.dart';
import 'recommended_stock_service.dart';
import 'securities_info.dart';
import 'stock_genius.dart';
import 'stock_market_analytics.dart';
import 'stock_status.dart';

class TodayFind extends StatelessWidget {

  const TodayFind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        StockStatus(),
        RealTimeStockChart(),
        ContainerDivider(),
        StockGenius(),
        ContainerDivider(),
        DividendPayout(),
        ContainerDivider(),
        StockMarketAnalytics(),
        ContainerDivider(),
        BestCommunity(),
        ContainerDivider(),
        RecommendedStockService(),
        SecuritiesInfo(),
      ],
    );
  }
}