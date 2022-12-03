import 'package:flutter/material.dart';

class TextSuhu extends StatelessWidget {
  const TextSuhu({
    super.key,
    required this.hasilKelvin,
    required this.hasilReamor,
  });

  final double hasilKelvin;
  final double hasilReamor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'Suhu dalam Kelvin',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              hasilKelvin.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Column(
          children: [
            const Text(
              'Suhu dalam Reamor',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              hasilReamor.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    );
  }
}
