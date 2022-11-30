import 'package:flutter/material.dart';

class ButtonSuhu extends StatelessWidget {
  const ButtonSuhu({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: Colors.blue,
      ),
      child: const Text('Konversi Suhu'),
    );
  }
}
