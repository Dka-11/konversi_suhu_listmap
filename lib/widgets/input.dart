import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormSuhu extends StatelessWidget {
  const FormSuhu({super.key, required this.nilaiCelcius});

  final TextEditingController nilaiCelcius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Controller NilaiCelcius retrieve
      controller: nilaiCelcius,
      decoration: const InputDecoration(
        hintText: 'Masukkan Suhu Dalam Celcius',
        labelText: "Masukkan Suhu Dalam Celcius",
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
