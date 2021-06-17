import 'package:flutter/material.dart';

class SliderIndicatorExample extends StatefulWidget {
  const SliderIndicatorExample({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  _SliderIndicatorExampleState createState() => _SliderIndicatorExampleState();
}

class _SliderIndicatorExampleState extends State<SliderIndicatorExample> {
  double _value = 0.0;

  void _onChanged(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value.toString()),
              Slider(value: _value, onChanged: _onChanged),
              Container(
                padding: const EdgeInsets.all(32.0),
                child: LinearProgressIndicator(
                  value: _value,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                child: CircularProgressIndicator(value: _value),
              )
            ],
          ),
        ),
      ),
    );
  }
}
