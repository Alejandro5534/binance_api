import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 28, 7, 56),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -0.5),
            child: SizedBox(
              height: 350,
              child: Image.asset(
                'assets/onboarding_image1.png',
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.8, 0.3),
            child: Text(
              'Easy Exchange',
              style: TextStyle(fontSize: 36),
            ),
          ),
          const Align(
            alignment: Alignment(-0.4, 0.52),
            child: SizedBox(
              width: 320,
              child: Text(
                'Fast and secure way to exchange and purchase 150+cryptocurrencies. 24/7 live-chat support.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
