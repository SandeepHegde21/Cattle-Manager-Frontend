import 'package:flutter/material.dart';

class Reports extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReportsState();
  }
}

class ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "CATTLE MANAGER",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
    );
  }
}
