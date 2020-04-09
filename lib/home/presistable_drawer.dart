import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';

class PresistableDrawer extends StatefulWidget {
  const PresistableDrawer({Key key}) : super(key: key);

  @override
  _PresistableDrawerState createState() => _PresistableDrawerState();
}

class _PresistableDrawerState extends State<PresistableDrawer> {
  final color = Colors.white;

  final fontSize = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withAlpha(190),
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            color: Colors.cyan.withAlpha(200),
          ),
          SizedBox(height: 10),
          FractionallySizedBox(widthFactor: 0.8, child: searchField()),
          iconText(Icons.home, 'الصفحه الرئيسه'),
          iconText(Icons.book, 'الدروس'),
          iconText(Icons.info, 'حول'),
          iconText(Icons.call, 'اتصل بنا'),
          Spacer(),
          socialContacts(),
        ],
      ),
    );
  }

  Widget iconText(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: fontSize,
            color: color,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget socialContacts() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'تواصل معنا :',
            style: TextStyle(
              fontSize: fontSize,
              color: color,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                BrandIcons.twitter,
                size: fontSize,
                color: color,
              ),
              Icon(
                BrandIcons.youtube,
                size: fontSize,
                color: color,
              ),
              Icon(
                BrandIcons.facebook,
                size: fontSize,
                color: color,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget searchField() {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(primaryColor: Colors.cyan.withAlpha(200)),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 1,
              )),
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: TextField(
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textDirection: TextDirection.rtl,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          )),
    );
  }
}
