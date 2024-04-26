import 'package:binance_api/features/auth/aplication/providers/auth_provider.dart';
import 'package:binance_api/features/auth/domain/form_validate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';

class RegisterView extends ConsumerWidget with Validators {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = TextEditingController();
    final password = TextEditingController();
    final confirmPassword = TextEditingController();

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
                  TextFormField(
                    controller: confirmPassword,
                    decoration: const InputDecoration(
                      labelText: 'Password confirm',
                      hintText: 'Confirm your password',
                    ),
                    inputFormatters: [PasswordInputFormatter()],
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => validateConfirmPassword(
                            password.text, confirmPassword.text)
                        ? null
                        : 'Passwords do not match',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      onPressed: () async {
                        final isFormValid = ref
                            .read(formValidatorProvider.notifier)
                            .validate(email.text, password.text,
                                confirmPassword.text);
                        if (isFormValid) {
                          ref
                              .read(userUsecasesProvider)
                              .registerUser(email.text, password.text);
                        } else {
                          toastification.show(
                              context: context,
                              title: const Text('Incorrect data'),
                              autoCloseDuration: const Duration(seconds: 3),
                              type: ToastificationType.error,
                              showProgressBar: false);
                        }
                      },
                      child: const Text('Registrar'),
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
