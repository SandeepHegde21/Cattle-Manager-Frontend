import 'package:cattlemanager/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './all_page.dart';

class SignUpForm extends StatefulWidget {
  @override
  State createState() => new SignUpFormState();
}

class SignUpFormState extends State<SignUpForm>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/rama.jpg"),
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
          color: Colors.black87,
        ),
        new Theme(
          data: new ThemeData(
            brightness: Brightness.dark,
            inputDecorationTheme: new InputDecorationTheme(
              // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
              labelStyle:
                  new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 150,
                    color: Colors.orange,
                    child: Center(
                      child: Title(
                        color: Colors.white,
                        child: Text(
                          "ENTER THE DETAILS",
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.2,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Form(
                      autovalidate: true,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new TextFormField(
                              decoration: new InputDecoration(
                                  labelText: "Cattle Name ",
                                  fillColor: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return "Cattle Name cannot be empty";
                                }
                              }),
                          new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "City",
                              ),
                              keyboardType: TextInputType.text,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return "City cannot be empty";
                                }
                              }),
                          TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Phone No.",
                              ),
                              keyboardType: TextInputType.number,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return "Phone No. cannot be empty";
                                }
                              }),
                          TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Place",
                            ),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "Place cannot be empty";
                              }
                            },
                            keyboardType: TextInputType.text,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                          ),
                          new MaterialButton(
                            height: 50.0,
                            minWidth: 150.0,
                            color: Colors.orange,
                            splashColor: Colors.teal,
                            textColor: Colors.white,
                            child: new Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
