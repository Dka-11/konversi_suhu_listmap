import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormSuhu extends StatelessWidget {
  const FormSuhu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Masukkan Suhu Dalam Celcius',
        labelText: "Masukkan Suhu Dalam Celcius",
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
