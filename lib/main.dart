import 'package:cattlemanager/screens/qrcode.dart';
import './screens/searchpage.dart';
import './screens/add_cattle.dart';
import 'package:flutter/material.dart';
import './screens/open_screen.dart';
import './screens/login_page.dart';
import './screens/sign_in.dart';
import './screens/all_page.dart';
import './screens/qrcode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cattle Manager",
      home: Material(child: OpenScreen()),
    );
  }
}
