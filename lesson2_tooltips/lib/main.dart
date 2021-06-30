import 'package:flutter/material.dart';
// import 'package:lesson2_tooltips/popup_menu_btn.dart';
import 'package:lesson2_tooltips/slider_with_timer.dart';
// import 'package:lesson2_tooltips/chips_example.dart';
// import 'package:lesson2_tooltips/sliders_indicators_example.dart';
// import 'package:lesson2_tooltips/tooltip_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: TooltipExample(title: "TOOLTIP EXAMPLE"),
      // home: ChipsExample(title: "Chips Example"),
      // home: SliderIndicatorExample(title: "Slider and Indicator Example"),
      // home: PopupMenuBtnExample(title: "Popup Menu Example"),
      home: SliderWithTimer(title: "Slider With Timer Assignment"),
    );
  }
}
