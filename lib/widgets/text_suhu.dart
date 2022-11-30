import 'package:flutter/material.dart';

class TextSuhu extends StatelessWidget {
  const TextSuhu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            Text(
              'Text 1',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Text 2',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        Column(
          children: const [
            Text(
              'Text 3',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Text 4',
              style: TextStyle(fontSize: 15),
            )
          ],
        )
      ],
    );
  }
}
