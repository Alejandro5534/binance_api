import 'package:binance_api/features/auth/aplication/presentation/auth_screen.dart';
import 'package:binance_api/features/home/aplication/presentation/home_screen.dart';
import 'package:binance_api/features/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const OnboardingScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation.drive(CurveTween(
                curve:
                    Curves.easeInOut)), // Personalizar la curva de la animación
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 1000),
      ),
    ),
    GoRoute(
      path: '/auth',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const AuthScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation.drive(CurveTween(
                curve:
                    Curves.easeInOut)), // Personalizar la curva de la animación
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 1000),
      ),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation.drive(CurveTween(
                curve:
                    Curves.easeInOut)), // Personalizar la curva de la animación
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 1000),
      ),
    ),
  ]);
}
