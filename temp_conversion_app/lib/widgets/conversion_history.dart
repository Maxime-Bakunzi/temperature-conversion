import 'package:flutter/material.dart';

class ConversionHistory extends StatelessWidget {
  final List<String> history;

  ConversionHistory({required this.history});

  @override
  Widget build(BuildContext context) {
    return history.isEmpty
        ? Container()
        : Expanded(
            child: ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(history[index]),
                );
              },
            ),
          );
  }
}
