import 'package:flutter/material.dart';
import 'package:konversi_suhu/widgets/convert.dart';
import 'package:konversi_suhu/widgets/input.dart';
import 'package:konversi_suhu/widgets/result.dart';

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
  String _newValue = "Kelvin";
  double _result = 0;
  // double _kelvin = 0;
  // double _reamor = 0;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    suhuInput.dispose();
    super.dispose();
  }

  konversiSuhu() {
    setState(() {
      _inputUser = double.parse(suhuInput.text);

      if (_newValue == "Kelvin") {
        _result = 273 + _inputUser;
        listViewHistoryItem.add("Kelvin : $_result"); //Add List for History
      } else {
        _result = (4 / 5) * _inputUser;
        listViewHistoryItem.add("Reamor : $_result");
      }
    });
  }

  void dropdownOnChanged(String? changeValue) {
    // fungsi ? nullable type
    setState(() {
      _newValue = changeValue!;
      // fungsi ! digunakan untuk guarantee that the input won't be null
      konversiSuhu();
      // agar nilai suhu dapat convert / berubah secara otomatis
    });
  }

  var listItem = [
    "Kelvin",
    "Reamor",
  ];

  List<String> listViewHistoryItem = <String>[]; //List ini masih kosong

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
            children: [
              // Classes from diff files.
              InputSuhu(
                nilaiCelcius: suhuInput,
              ),
              Column(
                children: [
                  DropdownButton(
                    items: listItem.map((String value) {
                      // listItem dari variabel diubah menjadi string.
                      return DropdownMenuItem<String>(
                        value: value,
                        // nilai dari suatu output, nilai akan tampil di debug console
                        child: Text(value),
                        //sebuah widget yang akan tampil di output
                      );
                    }).toList(),
                    value: _newValue,
                    // Mengubah output dropdown
                    onChanged: dropdownOnChanged,
                    // Agar Dropdown dapat di klik memakai widget onChanged
                  ),
                  Result(result: _result),
                ],
              ),
              ButtonSuhu(afterClick: konversiSuhu),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    "Riwayat Konversi",
                    style: TextStyle(fontSize: 20),
                  )),
              Expanded(
                  child: ListView(
                      children: listViewHistoryItem.map((String value) {
                return Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 15),
                    ));
              }).toList()))
            ],
          ),
        ),
      ),
    );
  }
}
