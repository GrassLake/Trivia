import 'package:flutter/material.dart';
import 'package:demo_desktop/buttons.dart';

class DashboardBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            padding: EdgeInsets.all(0.0),
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }),
        Text('Dashboard'),
        Expanded(child: Text('Sample')),
        BarButton(iconData: Icons.stop_rounded, text: 'Stop', onPressed: (){}),
        BarButton(iconData: Icons.refresh, text: 'Refresh', onPressed: (){}),

      ],
    );
  }

  final double height;

  const DashboardBar({Key key, @required this.height});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
