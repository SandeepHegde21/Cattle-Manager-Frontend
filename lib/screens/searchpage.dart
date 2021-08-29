import 'package:flutter/material.dart';

class searchpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _searchpage();
  }
}

class _searchpage extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(235, 180, 70, 1.0),
        title: Text(
          "CATTLE MANAGER",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
          child: Form(
              child: Column(children: [
        Container(
            padding: EdgeInsets.only(top: 30.0, right: 30.0, left: 35.0),
            child: Text(
              'Search your cattle',
              style: TextStyle(
                  color: Color.fromRGBO(235, 180, 70, 1.0), fontSize: 30),
            )),
        Container(
          padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
          child: TextFormField(
              validator: (String value) {
                if (value.isEmpty) {
                  return "Enter your Email ID";
                }
              },
              decoration: InputDecoration(
                  labelText: "Enter Tag Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ))),
        ),
        search_button()
      ]))),
    );
  }
}

class search_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 60,
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {},
        color: Colors.white,
        child: Text("Search"),
      ),
    );
  }
}
