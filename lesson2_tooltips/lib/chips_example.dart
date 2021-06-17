import 'package:flutter/material.dart';

class ChipsExample extends StatefulWidget {
  const ChipsExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ChipsExampleState createState() => _ChipsExampleState();
}

class _ChipsExampleState extends State<ChipsExample> {
  int _counter = 0;
  List<Widget> _items = <Widget>[];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      _items.add(_newItem(i));
    }
  }

  void _onClicked() {
    setState(() {
      _items.add(_newItem(_counter));
    });
  }

  Widget _newItem(int i) {
    Key key = new Key('item_${i}');
    _counter++;

    return Container(
      key: key,
      padding: const EdgeInsets.all(10.0),
      child: Chip(
        label: Text('${i} Name here'),
        deleteIconColor: Colors.red,
        deleteButtonTooltipMessage: "Delete",
        onDeleted: () => _removeItem(key),
        avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800, child: Text(i.toString())),
      ),
    );
  }

  void _removeItem(Key key) {
    for (var i = 0; i < _items.length; i++) {
      Widget item = _items.elementAt(i);

      if (item.key == key) {
        setState(() {
          _items.removeAt(i);
        });

        print("Removing ${key.toString()}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center, children: _items)),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: _onClicked, child: Icon(Icons.add)),
    );
  }
}
