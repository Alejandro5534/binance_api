import 'package:binance_api/core/router/router.dart';
import 'package:binance_api/features/auth/aplication/providers/auth_provider.dart';
import 'package:binance_api/features/auth/domain/form_validate.dart';
import 'package:binance_api/features/auth/domain/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';

class LoginView extends ConsumerWidget with Validators {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = TextEditingController();
    final password = TextEditingController();
    final router = ref.watch(routerProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                      controller: email,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      inputFormatters: [EmailInputFormatter()],
                      validator: (value) {
                        return validateEmail(email.text)
                            ? null
                            : 'Invalid email';
                      }),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                    ),
                    inputFormatters: [PasswordInputFormatter()],
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => validatePassword(password.text)
                        ? null
                        : 'Password must be at least 6 characters long',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      onPressed: () async {
                        final User? user = ref
                            .read(userUsecasesProvider)
                            .getUser(email.text.trim());

                        if (user == null) {
                          toastification.show(
                            context: context,
                            title: const Text('Incorrect data'),
                            autoCloseDuration: const Duration(seconds: 3),
                            type: ToastificationType.error,
                            showProgressBar: false,
                          );
                        } else {
                          router.go('/home');
                        }
                      },
                      child: const Text('Sign in'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
