import 'package:flutter/material.dart';

class BarButton extends StatelessWidget {
  const BarButton(
      {Key key,
      @required this.iconData,
      @required this.text,
      @required this.onPressed});

  final String text;
  final IconData iconData;

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
              iconData,
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
