import 'dart:async';

import 'package:binance_api/core/data/external/binance_service.dart';
import 'package:binance_api/features/home/domain/last_day_ticker_model.dart';

class BinanceRepository {
  final WebSocketManager webSocketManager;

  BinanceRepository(this.webSocketManager) {
    try {
      webSocketManager
          .initWebSocket('wss://stream.binance.com:9443/ws/ethusdt@ticker');
    } catch (e) {
      // print('Error from repository: $e');
      rethrow; // Re-throw to be handled by UI or further up.
    }
  }

  Stream<LastDayTickerModel> getTickerStream() {
    if (webSocketManager.channel == null) {
      throw 'WebSocket is not initialized.';
    }
    final stream = webSocketManager.channel!.stream
        .transform(LastDayTickerModel.createTransformer());
    return stream;
  }
}
