import 'package:binance_api/features/auth/aplication/presentation/widgets/login_view.dart';
import 'package:binance_api/features/auth/aplication/presentation/widgets/register_view.dart';
import 'package:binance_api/features/auth/aplication/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(switchAuthProvider);
    return Scaffold(
      body: viewState ? const RegisterView() : const LoginView(),
      bottomSheet: TextButton(
        onPressed: () {
          ref.read(switchAuthProvider.notifier).changeAuth();
        },
        child: Text(viewState ? 'Login' : 'Register'),
      ),
    );
  }
}
