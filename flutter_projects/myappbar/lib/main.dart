import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'SizeConfig.dart';

void main() {
  runApp(EmbeddedDesktop());
}

class EmbeddedDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmbeddedDesktop',
      home: ScaffoldMainScreen(),
    );
  }
}

class ScaffoldMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: DashBoardAppBar(height: SizeConfig.safeBlockVertical * 5),
      body: Container(),
    );
  }
}

class TemplateAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  const TemplateAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class DashBoardAppBar extends TemplateAppBar {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              Icons.menu,
              size: SizeConfig.safeBlockHorizontal * 7,
            ),
            onPressed: () {}),
        Text(
          'Dashboard',
          style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
        ),
        Expanded(
          child: Center(
            child: Text(
              'Title',
              style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
            ),
          ),
        ),
        AppBarRightButton(
          text: 'stop',
          icon: Icons.stop_rounded,
          onPressed: () {},
        ),
        SizedBox(
          width: 10.0,
        ),
        AppBarRightButton(
          text: 'Refresh',
          icon: Icons.refresh,
          onPressed: () {},
        ),
      ],
    );
  }

  final double height;

  const DashBoardAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class AppBarRightButton extends StatelessWidget {
  AppBarRightButton(
      {@required this.icon, @required this.text, @required this.onPressed});

  final String text;
  final IconData icon;

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.grey,
      splashColor: Colors.white54,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.black54,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              maxLines: 1,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const BeveledRectangleBorder(),
    );
  }
}
