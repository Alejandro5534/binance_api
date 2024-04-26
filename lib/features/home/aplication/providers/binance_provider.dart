import 'package:binance_api/core/data/external/binance_service.dart';
import 'package:binance_api/features/home/data/binance_repository.dart';
import 'package:binance_api/features/home/domain/get_ticker_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/last_day_ticker_model.dart';

part 'binance_provider.g.dart';

@riverpod
WebSocketManager webSocketManager(WebSocketManagerRef ref) {
  return WebSocketManager();
}

@riverpod
BinanceRepository binanceRepository(BinanceRepositoryRef ref) {
  final websocketManager = ref.watch(webSocketManagerProvider);
  return BinanceRepository(websocketManager);
}

@riverpod
GetTickerStreamUseCase getTickerStreamUseCase(GetTickerStreamUseCaseRef ref) {
  final repository = ref.watch(binanceRepositoryProvider);
  return GetTickerStreamUseCase(repository);
}

@Riverpod()
Stream<LastDayTickerModel> tickerStream(TickerStreamRef ref) {
  final getTickerStreamUseCase = ref.watch(getTickerStreamUseCaseProvider);

  return getTickerStreamUseCase.execute();
}
