import 'package:flutter/material.dart';
import 'package:konversi_suhu/widgets/button_suhu.dart';
import 'package:konversi_suhu/widgets/form_suhu.dart';
import 'package:konversi_suhu/widgets/text_suhu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Digunakan untuk "Retrieve Current Value Input"
  TextEditingController suhuInput = TextEditingController();
  // Var
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamor = 0;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    suhuInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konversi Suhu"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Classes from diff files.
              FormSuhu(
                nilaiCelcius: suhuInput,
              ),
              TextSuhu(),
              ButtonSuhu(),
            ],
          ),
        ),
      ),
    );
  }
}
