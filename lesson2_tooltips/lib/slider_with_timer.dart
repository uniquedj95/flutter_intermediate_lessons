import 'dart:async';
import 'package:flutter/material.dart';

class SliderWithTimer extends StatefulWidget {
  const SliderWithTimer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SliderWithTimerState createState() => _SliderWithTimerState();
}

class _SliderWithTimerState extends State<SliderWithTimer> {
  double _value = 0;
  int seconds = 0;

  @override
  void initState() {
    super.initState();
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        _value = seconds / 60.0;

        if (seconds < 0 || seconds > 59) {
          timer.cancel();
        } else {
          seconds++;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
            child: Column(children: <Widget>[
          Text(_value.toString()),
          Slider(value: _value, onChanged: null),
        ])),
      ),
    );
  }
}
