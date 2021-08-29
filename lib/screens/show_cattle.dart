import 'package:flutter/material.dart';

class ShowCattle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ShowCattleState();
  }
}

class ShowCattleState extends State<ShowCattle> {
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
