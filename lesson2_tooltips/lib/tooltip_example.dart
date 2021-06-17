import 'package:flutter/material.dart';

class TooltipExample extends StatefulWidget {
  const TooltipExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TooltipExampleState createState() => _TooltipExampleState();
}

class _TooltipExampleState extends State<TooltipExample> {
  String _value = "Nothing Yet";

  void _onPressed() => setState(() => _value = new DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_value),
          IconButton(
            onPressed: _onPressed,
            icon: Icon(Icons.timer),
            tooltip: "Click Me!",
          )
        ],
      )),
    );
  }
}
