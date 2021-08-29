import 'dart:ui';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:dropdownfield/dropdownfield.dart';
import './all_page.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddCattle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddCattleState();
  }
}

class AddCattleState extends State<AddCattle> {
  TextEditingController dateCtl = TextEditingController();
  TextEditingController dateCtls = TextEditingController();
  var _gender = ["Male", "Female"];
  var _genderval;
  var _select_from = ["Born in farm", "Purchased", "Other"];
  String _selected_from;
  String qrcode;
  String _selected_breed;
  var _select_breed = [
    'Amrith Mahal',
    'Baragur',
    "Dangi",
    'Deoni',
    'Gangatiri',
    'Gaolao',
    'Gir',
    "Hallikar",
    'Hariana',
    'Javari',
    'Kankrej',
    'Kangayam',
    'Kasargod',
    'Kenkatha',
    "Kerighar",
    'Lal Kandhari',
    'Malenadu Gidda',
    'Malvi',
    'Nagori',
    'Nimari',
    'Ongole',
    'Ponuvar',
    'Rathi',
    'Sahiwal',
    'Sindhi',
    'Tharparkar',
    'Umblacheri',
    'Vechur',
  ];
  DateTime _date = DateTime.now();
  final formKey = new GlobalKey<FormState>();
  Future<void> scanqrcode() async {
    try {
      final qrcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      if (!mounted) return;
      setState(() {
        this.qrcode = qrcode;
      });
    } on PlatformException catch (ex) {
      qrcode = "Failed to get platform version";
    }
  }

  Future<Null> _selectDate(BuildContext contex) async {
    DateTime datepicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2200),
    );
    if (datepicker != null && datepicker != _date) {
      setState(() {
        _date = datepicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "CATTLE MANAGER",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          color: Colors.white,
          child: Form(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: RaisedButton(
                    elevation: 8.0,
                    child: Text("Scan the QR code"),
                    onPressed: () {
                      setState(() {
                        scanqrcode();
                      });
                    },
                  ),

                  //decoration: InputDecoration(
                  //   hintText: qrcode,
                  //   labelText: "Tag Number",
                  //  border: OutlineInputBorder(
                  //    borderRadius: BorderRadius.circular(4.0),
                ),
                SizedBox(
                  height: 50,
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                      child: Text(
                        (qrcode == null) || qrcode == '-1'
                            ? 'U havent scanned'
                            : 'Your TAG NUMBER is $qrcode',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your tag number from above",
                      labelText: "Tag Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Name",
                          hintText: 'Enter your name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ))),
                ),
                Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 6, right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(235, 180, 70, 1.0)),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Text("Select Breed"),
                                dropdownColor: Colors.white,
                                elevation: 5,
                                isExpanded: true,
                                value: _selected_breed,
                                onChanged: (value) {
                                  setState(() {
                                    _selected_breed = value;
                                  });
                                },
                                items: _select_breed.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList())))),
                Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 6, right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(235, 180, 70, 1.0)),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Text("Select Gender"),
                                dropdownColor: Colors.white,
                                elevation: 5,
                                isExpanded: true,
                                value: _genderval,
                                onChanged: (value) {
                                  setState(() {
                                    _genderval = value;
                                  });
                                },
                                items: _gender.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList())))),
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                    controller: dateCtl,
                    decoration: InputDecoration(
                      labelText: "Date of birth",
                      hintText: "Date on which animal was born",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(235, 180, 70, 1.0),
                        ),
                      ),
                    ),
                    onTap: () async {
                      DateTime date = DateTime(2000);
                      FocusScope.of(context).requestFocus(new FocusNode());

                      date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));

                      dateCtl.text = date.toIso8601String().split('T').first;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                    controller: dateCtls,
                    decoration: InputDecoration(
                      labelText: "Date of Entry",
                      hintText: 'Date of the animal entry',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(235, 180, 70, 1.0),
                        ),
                      ),
                    ),
                    onTap: () async {
                      DateTime dates = DateTime(1900);
                      FocusScope.of(context).requestFocus(new FocusNode());

                      dates = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));

                      dateCtls.text = dates.toIso8601String().split('T').first;
                    },
                  ),
                ),
                Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 6, right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(235, 180, 70, 1.0)),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Text("Select how cattle was obtained"),
                                dropdownColor: Colors.white,
                                elevation: 5,
                                isExpanded: true,
                                value: _selected_from,
                                onChanged: (value) {
                                  setState(() {
                                    _selected_from = value;
                                  });
                                },
                                items: _select_from.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList())))),
                addcat()
              ],
            ),
          ),
        ));
  }
}

class addcat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 60,
      margin: EdgeInsets.only(bottom: 150, left: 10, right: 10, top: 20),
      child: RaisedButton(
        elevation: 20.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => all()));
        },
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        color: Color.fromRGBO(235, 180, 70, 1.0),
        child: Text("ADD CATTLE"),
      ),
    );
  }
}
