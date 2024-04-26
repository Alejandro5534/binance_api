import 'package:binance_api/core/router/router.dart';
import 'package:binance_api/features/onboarding/presentation/widgets/first_page.dart';
import 'package:binance_api/features/onboarding/presentation/widgets/second_page.dart';
import 'package:binance_api/features/onboarding/presentation/widgets/third_page.dart';
import 'package:binance_api/features/onboarding/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController pageController = PageController();
    final int countPage = ref.watch(pageCountProvider);
    final router = ref.watch(routerProvider);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) =>
                ref.read(pageCountProvider.notifier).changePage(value),
            children: const [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),
          Consumer(
            builder: (context, ref, child) => Stack(
              children: [
                Positioned(
                  left: 30,
                  bottom: 20,
                  child: countPage == 0
                      ? Container()
                      : IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 35,
                          ),
                          onPressed: () {
                            pageController.previousPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.easeIn);
                          },
                        ),
                ),
                Positioned(
                  right: 30,
                  bottom: 20,
                  child: countPage == 2
                      ? ElevatedButton(
                          onPressed: () {
                            router.go('/auth');
                          },
                          child: const Text('Start'))
                      : IconButton(
                          onPressed: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                            print(pageController.page);
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                ),
                Positioned(
                  right: 30,
                  top: 20,
                  child: TextButton(
                    onPressed: () {
                      router.go('/auth');
                    },
                    child: const Text('Skip'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
