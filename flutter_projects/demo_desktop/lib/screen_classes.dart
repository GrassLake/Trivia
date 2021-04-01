import 'package:demo_desktop/SizeConfig.dart';
import 'package:demo_desktop/buttons.dart';
import 'package:demo_desktop/sliders.dart';
import 'package:flutter/material.dart';

import 'SizeConfig.dart';

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
                        Text('70.0'),
                        Expanded(
                          child: Center(),
                        ),
                        Text('Min'),
                        SizedBox(height: 10.0),
                      ],
                    ),
                    VerticalSlider(sliderValue: 70.0),
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

class Alarms_Warning_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 2.5,
      children: [
        Column(mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 10,
                        height: SizeConfig.safeBlockHorizontal * 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text('Icon'),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('123'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AlarmCode',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: SizeConfig.safeBlockHorizontal * 20,
                        alignment: Alignment.center,
                        child: Text('CIM fault (Communication interface Module)',
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),

        Column(mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 10,
                        height: SizeConfig.safeBlockHorizontal * 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text('Icon'),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('123'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AlarmCode',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: SizeConfig.safeBlockHorizontal * 20,
                        alignment: Alignment.center,
                        child: Text('CIM fault (Communication interface Module)',
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Column(mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 10,
                        height: SizeConfig.safeBlockHorizontal * 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text('Icon'),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('123'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AlarmCode',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: SizeConfig.safeBlockHorizontal * 20,
                        alignment: Alignment.center,
                        child: Text('CIM fault (Communication interface Module)',
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Column(mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 10,
                        height: SizeConfig.safeBlockHorizontal * 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text('Icon'),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('123'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AlarmCode',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: SizeConfig.safeBlockHorizontal * 20,
                        alignment: Alignment.center,
                        child: Text('CIM fault (Communication interface Module)',
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Column(mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 10,
                        height: SizeConfig.safeBlockHorizontal * 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text('Icon'),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('123'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AlarmCode',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: SizeConfig.safeBlockHorizontal * 20,
                        alignment: Alignment.center,
                        child: Text('CIM fault (Communication interface Module)',
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Column(mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 10,
                        height: SizeConfig.safeBlockHorizontal * 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text('Icon'),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('123'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AlarmCode',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: SizeConfig.safeBlockHorizontal * 20,
                        alignment: Alignment.center,
                        child: Text('CIM fault (Communication interface Module)',
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
