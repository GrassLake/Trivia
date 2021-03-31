import 'package:demo_desktop/SizeConfig.dart';
import 'package:demo_desktop/buttons.dart';
import 'package:demo_desktop/sliders.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  var sliderValue = 0.0;

  @override
  State<StatefulWidget> createState() {
    return _SettingScreen();
  }
}

class _SettingScreen extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: SizeConfig.safeBlockHorizontal * 40,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SetPoint'),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 3,
                  ),
                  BarButton(
                      iconData: Icons.settings, text: 'Set', onPressed: () {}),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Max'),
                        Expanded(
                          child: Center(),
                        ),
                        Text('${widget.sliderValue}'),
                        Expanded(
                          child: Center(),
                        ),
                        Text('Min'),
                        SizedBox(height: 10.0),
                      ],
                    ),
                    VerticalSlider(sliderValue: widget.sliderValue),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(),
        ),
      ],
    );
  }
}
