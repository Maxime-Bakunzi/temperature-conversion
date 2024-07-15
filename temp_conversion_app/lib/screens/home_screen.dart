import 'package:flutter/material.dart';
import '../widgets/conversion_selector.dart';
import '../widgets/conversion_result.dart';
import '../widgets/conversion_history.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _conversionType = 'F to C';
  TextEditingController _controller = TextEditingController();
  double? _convertedValue;
  List<String> _history = [];

  void _convert() {
    setState(() {
      double input = double.tryParse(_controller.text) ?? 0.0;
      if (_conversionType == 'F to C') {
        _convertedValue = (input - 32) * 5 / 9;
      } else {
        _convertedValue = input * 9 / 5 + 32;
      }
      _history.add(
          '$_conversionType: $input => ${_convertedValue!.toStringAsFixed(2)}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Conversion App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ConversionSelector(
              conversionType: _conversionType,
              onChanged: (String? newType) {
                setState(() {
                  _conversionType = newType ?? 'F to C';
                });
              },
            ),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter temperature',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convert,
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            ConversionResult(
              convertedValue: _convertedValue,
            ),
            SizedBox(height: 20),
            ConversionHistory(
              history: _history,
            ),
          ],
        ),
      ),
    );
  }
}
