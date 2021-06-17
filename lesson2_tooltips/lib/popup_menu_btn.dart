import 'package:flutter/material.dart';

class PopupMenuBtnExample extends StatefulWidget {
  const PopupMenuBtnExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _PopupMenuBtnExampleState createState() => _PopupMenuBtnExampleState();
}

enum Animals { Cat, Dog, Bird, Lizard, Fish }

class _PopupMenuBtnExampleState extends State<PopupMenuBtnExample> {
  Animals _selected = Animals.Cat;
  String _value = "Make a selection";
  List<PopupMenuEntry<Animals>> _items = <PopupMenuEntry<Animals>>[];

  @override
  void initState() {
    super.initState();
    for (Animals animal in Animals.values) {
      _items.add(PopupMenuItem(
        child: Text(_getDisplay(animal)),
        value: animal,
      ));
    }
  }

  void _onSelected(Animals animal) {
    setState(() {
      _selected = animal;
      _value = "You selected ${_getDisplay(animal)}";
    });
  }

  String _getDisplay(Animals animal) {
    int index = animal.toString().indexOf('.');

    index++;

    return animal.toString().substring(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(_value),
            ),
            PopupMenuButton<Animals>(
              child: Icon(Icons.input),
              initialValue: Animals.Cat,
              onSelected: _onSelected,
              itemBuilder: (BuildContext context) {
                return _items;
              },
            )
          ],
        ),
      ),
    );
  }
}
