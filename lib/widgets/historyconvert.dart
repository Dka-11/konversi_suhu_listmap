import 'package:flutter/material.dart';

class HistoryConvert extends StatelessWidget {
  const HistoryConvert({
    super.key,
    required this.listViewHistoryItem,
  });

  final List<String> listViewHistoryItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            children: listViewHistoryItem.map((String value) {
      return Container(
          margin: const EdgeInsets.all(10),
          child: Text(
            value,
            style: const TextStyle(fontSize: 15),
          ));
    }).toList()));
  }
}
