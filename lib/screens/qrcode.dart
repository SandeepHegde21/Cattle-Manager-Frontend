import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _myActivity;
  var _gender = ["Male", "Female"];
  String _chosenValue;
  String _myActivityResult;
  final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Formfield Example'),
      ),
      body: Center(
          child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: DropdownButton(
                  hint: Text("select Gender"),
                  dropdownColor: Colors.grey,
                  elevation: 5,
                  isExpanded: true,
                  value: _myActivity,
                  onChanged: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  items: _gender.map(
                    (value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList()))),
    );
  }
}
// Center(
//           child: Container(
//               width: 350,
//               height: 60,
//               child: DropdownButton<String>(
//                 focusColor: Colors.white,
//                 value: _genderval,
//                 //elevation: 5,
//                 style: TextStyle(color: Colors.white),
//                 iconEnabledColor: Colors.black,
//                 items: <String>[
//                   'Male',
//                   'Female',
//                 ].map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(
//                       value,
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   );
//                 }).toList(),

//                 hint: Text(
//                   "Gender                                                                      ",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 onChanged: (String value) {
//                   setState(() {
//                     _genderval = value;
//                   });
//                 },
//               )),),
//     );
//   }
// }
// Form(
//           key: formKey,
//           child: Column(
//             children: <Widget>[
//               Container(
//                 height: 200,
//                 padding: EdgeInsets.all(16),
//                 child: DropDownFormField(
//                   titleText: 'Gender',
//                   hintText: "Choose any",
//                   value: _myActivity,
//                   onSaved: (value) {
//                     setState(() {
//                       _myActivity = value;
//                     });
//                   },
//                   onChanged: (value) {
//                     setState(() {
//                       _myActivity = value;
//                     });
//                   },
//                   dataSource: [
//                     {
//                       "display": "Male",
//                       "value": "Male",
//                     },
//                     {
//                       "display": "Female",
//                       "value": "Female",
//                     }
//                   ],
//                   textField: 'display',
//                   valueField: 'value',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//   child: DropdownButton<String>(
//     hint: Text("select any"),
//     items: _gender.map((String dropDownStringItem) {
//       return DropdownMenuItem<String>(
//         value: dropDownStringItem,
//         child: Text(dropDownStringItem),
//       );
//     }).toList(),
//     onChanged: (String newvalueselected) {
//       setState(() {
//         this._genderval = newvalueselected;
//       });
//     },
//     value: _genderval,
//   ),
// ),
