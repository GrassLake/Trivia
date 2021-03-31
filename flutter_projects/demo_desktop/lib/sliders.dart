import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class VerticalSlider extends StatefulWidget {

  double sliderValue;

  VerticalSlider({Key key, @required this.sliderValue}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VerticalSlider();
  }
}

class _VerticalSlider extends State<VerticalSlider> {
  double lv = 0.0;

  double uv = 500.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterSlider(
          values: [widget.sliderValue],
          max: 500.0,
          min: 0.0,
          axis: Axis.vertical,
          onDragging: (handlerIndex, lowerValue, upperValue) {
            lv = lowerValue;
            uv = upperValue;
            setState(() {
              widget.sliderValue = lowerValue;
            });
          },
        ));
  }
}