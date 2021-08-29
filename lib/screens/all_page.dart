import 'package:cattlemanager/screens/login_page.dart';
import 'package:cattlemanager/screens/show_cattle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './add_cattle.dart';
import './searchpage.dart';
import './events.dart';
import './reports.dart';

class all extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _all();
  }
}

class _all extends State<all> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "CATTLE MANAGER",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "LOGOUT",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
      body: Card(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  'ADD ANIMAL',
                  textScaleFactor: 1.5,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddCattle()));
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(FontAwesomeIcons.book),
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  'SHOW ANIMALS',
                  textScaleFactor: 1.5,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ShowCattle()));
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.report),
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  'REPORTS',
                  textScaleFactor: 1.5,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Reports()));
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.event),
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  'EVENTS',
                  textScaleFactor: 1.5,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Events()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
