import 'package:binance_api/core/router/router.dart';
import 'package:binance_api/features/home/aplication/presentation/characteristic_chart.dart';
import 'package:binance_api/features/home/aplication/providers/binance_provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickerStream = ref.watch(tickerStreamProvider);
    final router = ref.watch(routerProvider);

    return Scaffold(
      body: Center(
          child: tickerStream.when(
        data: (data) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'ETH/USDT',
                style: TextStyle(fontSize: 32),
              ),
              Text(
                data.lastDayTickerModelE!,
                style: const TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 200,
                child: BarChart(BarChartData(
                  maxY: (double.tryParse(data.h!) ?? 0.0) + 30,
                  minY:
                      (double.tryParse(data.lastDayTickerModelL!) ?? 0.0) - 30,
                  barGroups: [
                    BarChartGroupData(x: 0, barRods: [
                      BarChartRodData(
                          color: Colors.red,
                          toY: double.tryParse(data.h!) ?? 0.0),
                      BarChartRodData(
                          color: Colors.amber,
                          toY: double.tryParse(data.lastDayTickerModelO!) ??
                              0.0),
                      BarChartRodData(
                          color: Colors.white,
                          toY: double.tryParse(data.lastDayTickerModelL!) ??
                              0.0),
                      BarChartRodData(
                          color: Colors.blueGrey,
                          toY: double.tryParse(data.lastDayTickerModelC!) ??
                              0.0),
                    ])
                  ],
                  titlesData: const FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                )),
              ),
              const SizedBox(height: 30),
              CharacteristicChart(
                  text: 'High Price: ${data.h!}', color: Colors.red),
              CharacteristicChart(
                  text: 'Open Price: ${data.lastDayTickerModelO!}',
                  color: Colors.amber),
              CharacteristicChart(
                  text: 'Low Price: ${data.lastDayTickerModelL!}',
                  color: Colors.white),
              CharacteristicChart(
                  text: 'Last Price: ${data.lastDayTickerModelC!}',
                  color: Colors.blueGrey),
            ],
          );
        },
        error: (error, stackTrace) => TextButton(
          onPressed: () {
            router.go('/home');
          },
          child: const Text('Try again'),
        ),
        loading: () => const CircularProgressIndicator(),
      )),
    );
  }
}
