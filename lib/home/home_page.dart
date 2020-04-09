import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:website_prototype/home/presistable_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(flex: 2, child: PresistableDrawer()),
          Expanded(flex: 8, child: content()),
        ],
      ),
    );
  }

  Widget content() {
    return Container();
  }
}
