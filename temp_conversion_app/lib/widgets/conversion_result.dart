import 'package:flutter/material.dart';

class ConversionResult extends StatelessWidget {
  final double? convertedValue;

  ConversionResult({this.convertedValue});

  @override
  Widget build(BuildContext context) {
    return convertedValue == null
        ? Container()
        : Text(
            'Converted Value: ${convertedValue!.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 20),
          );
  }
}
