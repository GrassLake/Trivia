import 'package:demo_desktop/SizeConfig.dart';
import 'package:demo_desktop/bar_classes.dart';
import 'package:demo_desktop/screen_classes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EmbeddedApp());
}

class EmbeddedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo_desktop',
      home: EmbeddedDesktop(),
    );
  }
}

class EmbeddedDesktop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmbeddedDesktop();
  }
}

class _EmbeddedDesktop extends State<EmbeddedDesktop> {
  PreferredSizeWidget barContent;

  Widget displayContent;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    barContent = DashboardBar(height: SizeConfig.safeBlockVertical * 5);
    displayContent = SettingScreen();
    return Scaffold(
      appBar: barContent,
      body: displayContent,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Brand Logo'),
            ),
            ListTile(
              title: Text('Dashboard'),
            ),
            ListTile(
              title: Text('Status'),
            ),
            ListTile(
              title: Text('Alarms | Warning'),
            ),
            ListTile(
              title: Text('Setting'),
            ),
            ListTile(
              title: Text('Assist'),
            ),
            ListTile(
              title: Text('Report'),
            ),
          ],
        ),
      ),
    );
  }
}
