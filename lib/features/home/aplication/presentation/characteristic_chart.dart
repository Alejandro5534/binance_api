import 'package:flutter/material.dart';

class CharacteristicChart extends StatelessWidget {
  final String text;
  final Color color;
  const CharacteristicChart(
      {super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Icon(
            Icons.radio_button_checked,
            color: color,
          ),
          const SizedBox(width: 7),
          Text(text)
        ]),
        const SizedBox(height: 15),
      ],
    );
  }
}
