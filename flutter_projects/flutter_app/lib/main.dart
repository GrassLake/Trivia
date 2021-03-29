import 'package:flutter/material.dart';

void main() => runApp(EmbeddedDesktop());

class EmbeddedDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: DashboardPageTitle,
      home: CustomedHomePage(),
    );
  }
}

class CustomedHomePage extends StatefulWidget {
  @override
  _CustomedHomePage createState() => _CustomedHomePage();
}

class _CustomedHomePage extends State<CustomedHomePage> {
  StatelessWidget desktopDisplayContent = DashboardPage();

  var desktopTitle = DashboardPageTitle;
  BasicCustomedAppBar desktopAppBar = DashboardAppBar(height: 56.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desktopAppBar,
      body: desktopDisplayContent,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: (Text('Brand Logo')),
              decoration: BoxDecoration(color: Colors.grey),
            ),
            ListTile(
              title: Text(DashboardPageTitle),
              onTap: () {
                setState(() {
                  desktopDisplayContent = DashboardPage();
                  desktopAppBar = DashboardAppBar(height: 56.0);
                  desktopTitle = DashboardPageTitle;
                });

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(StatusPageTitle),
              onTap: () {
                setState(() {
                  desktopDisplayContent = StatusPage();
                  desktopAppBar = StateAppBar(height: 56.0);
                  desktopTitle = StatusPageTitle;
                });

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(Alarms_WarningPageTitle),
            ),
            ListTile(
              title: Text(SettingPageTitle),
              onTap: () {
                setState(() {
                  desktopDisplayContent = SettingPage();
                });

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(AssistPageTitle),
            ),
            ListTile(
              title: Text(ReportPageTitle),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: const EdgeInsets.only(bottom: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Normal',
                      style: TextStyle(
                          fontSize: 128, fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'Level',
                        style: TextStyle(fontSize: 28, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 80.0),
                      child: Text(
                        ' XXm',
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'Power',
                        style: TextStyle(fontSize: 28, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Text(
                        ' XXm',
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }

  var content = Center(child: Row());
}

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StatusPageTitle),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: VerticalSlider(),
          )),
          Expanded(
            child: Text('Placeholder'),
          ),
        ],
      ),
    );
  }
}

class BasicCustomedAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  final double height;

  const BasicCustomedAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class DashboardAppBar extends BasicCustomedAppBar {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                size: 32,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
          //Expanded(child: Text(DashboardPageTitle)),
          Text('123'),
          Container(
            margin: EdgeInsets.only(top: 6.0, left: 40.0),
            child: Text(
              DashboardPageTitle,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20.0,right:100),
              child: Center(
                  child: Text(
                'CUxxx',
                style: TextStyle(fontSize: 22, color: Colors.grey),
              )),
            ),
          ),
          CustomButton(
            onPressed: () {},

          ),
          CustomButton(
            onPressed: () {},

          ),
        ],
      ),
    );
  }

  final double height;

  const DashboardAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class StateAppBar extends BasicCustomedAppBar {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
          Expanded(child: Text('Status')),
        ],
      ),
    );
  }

  final double height;

  const StateAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class VerticalSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VerticalSlider();
  }
}

class _VerticalSlider extends State<VerticalSlider> {
  var _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.red[700],
        inactiveTrackColor: Colors.red[100],
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.redAccent,
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        activeTickMarkColor: Colors.red[700],
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.redAccent,
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      child: Slider(
        value: _sliderValue,
        min: 0,
        max: 100,
        divisions: 10,
        label: '$_sliderValue',
        onChanged: (value) {
          setState(() {
            _sliderValue = value;
          });
        },
      ),
    );
  }
}

const DashboardPageTitle = 'DashBoard';
const StatusPageTitle = 'Status';
const Alarms_WarningPageTitle = 'Alarms | Warning';
const SettingPageTitle = 'Setting';
const AssistPageTitle = 'Assist';
const ReportPageTitle = 'Report';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.green,
      splashColor: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.face,
              color: Colors.amber,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Stop",
              maxLines: 1,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
