import 'package:flutter/material.dart';

class ConversionSelector extends StatelessWidget {
  final String conversionType;
  final ValueChanged<String?> onChanged;

  ConversionSelector({required this.conversionType, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Conversion Type: '),
        DropdownButton<String>(
          value: conversionType,
          onChanged: onChanged,
          items: <String>['F to C', 'C to F']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
