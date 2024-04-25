import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 28, 7, 56),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, 0.5),
            child: SizedBox(
              height: 350,
              child: Image.asset(
                'assets/onboarding_image2.png',
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.72, -0.45),
            child: Text(
              'Enhance Producity',
              style: TextStyle(fontSize: 36),
            ),
          ),
          const Align(
            alignment: Alignment(-0.6, -0.3),
            child: SizedBox(
              width: 320,
              child: Text(
                'The lastest technologies in the modern tech age are adopting to enhance productivity',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
