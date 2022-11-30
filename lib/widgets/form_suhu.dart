import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormSuhu extends StatefulWidget {
  const FormSuhu({super.key});

  @override
  State<FormSuhu> createState() => _FormSuhuState();
}

class _FormSuhuState extends State<FormSuhu> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: const InputDecoration(
        hintText: 'Masukkan Suhu Dalam Celcius',
        labelText: "Masukkan Suhu Dalam Celcius",
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
