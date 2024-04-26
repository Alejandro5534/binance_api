// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'binance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webSocketManagerHash() => r'428a975ff1117838f6fae3aca22084c1cf80a8fb';

/// See also [webSocketManager].
@ProviderFor(webSocketManager)
final webSocketManagerProvider = AutoDisposeProvider<WebSocketManager>.internal(
  webSocketManager,
  name: r'webSocketManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$webSocketManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WebSocketManagerRef = AutoDisposeProviderRef<WebSocketManager>;
String _$binanceRepositoryHash() => r'c1466f1b8ce656622512b4e1c3a3bbb594755b6c';

/// See also [binanceRepository].
@ProviderFor(binanceRepository)
final binanceRepositoryProvider =
    AutoDisposeProvider<BinanceRepository>.internal(
  binanceRepository,
  name: r'binanceRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$binanceRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BinanceRepositoryRef = AutoDisposeProviderRef<BinanceRepository>;
String _$getTickerStreamUseCaseHash() =>
    r'5e9a233ffc0f7689d64896bb564a76d2ce9e3969';

/// See also [getTickerStreamUseCase].
@ProviderFor(getTickerStreamUseCase)
final getTickerStreamUseCaseProvider =
    AutoDisposeProvider<GetTickerStreamUseCase>.internal(
  getTickerStreamUseCase,
  name: r'getTickerStreamUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getTickerStreamUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTickerStreamUseCaseRef
    = AutoDisposeProviderRef<GetTickerStreamUseCase>;
String _$tickerStreamHash() => r'dadfbe4fb9f6a13383fdd5da3f1e406347a3acbe';

/// See also [tickerStream].
@ProviderFor(tickerStream)
final tickerStreamProvider =
    AutoDisposeStreamProvider<LastDayTickerModel>.internal(
  tickerStream,
  name: r'tickerStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tickerStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TickerStreamRef = AutoDisposeStreamProviderRef<LastDayTickerModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
