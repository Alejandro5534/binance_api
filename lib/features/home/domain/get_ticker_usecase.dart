import 'package:binance_api/features/home/domain/last_day_ticker_model.dart';

import '../data/binance_repository.dart';

class GetTickerStreamUseCase {
  final BinanceRepository repository;

  GetTickerStreamUseCase(this.repository);

  Stream<LastDayTickerModel> execute() {
    return repository.getTickerStream();
  }
}
