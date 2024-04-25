import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
                'assets/onboarding_image3.png',
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.4, 0.3),
            child: Text(
              'Transparent Community',
              style: TextStyle(fontSize: 34),
            ),
          ),
          const Align(
            alignment: Alignment(-0.6, 0.48),
            child: SizedBox(
              width: 320,
              child: Text(
                'The individuals who are part of a community help raise funds to use features of the technology.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
