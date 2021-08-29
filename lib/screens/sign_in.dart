import 'package:cattlemanager/screens/login_page.dart';
import 'package:cattlemanager/screens/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  @override
  State createState() => new SignUpPageState();
}

class SignUpPageState extends State<SignUpPage>
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
                          "SIGN UP",
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
                                labelText: "Enter Email",
                                fillColor: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                            ),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "Enter your password";
                              }
                            },
                            obscureText: true,
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Confirm Password",
                            ),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "Confirm your password";
                              }
                            },
                            obscureText: true,
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
                                  builder: (context) => SignUpForm()));
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
