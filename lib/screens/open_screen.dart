import 'package:flutter/material.dart';
import './login_page.dart';
import './sign_in.dart';

class OpenScreen extends StatefulWidget {
  @override
  State createState() => new OpenScreenState();
}

class OpenScreenState extends State<OpenScreen>
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
                  new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Form(
                      autovalidate: true,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 75,
                            padding: EdgeInsets.only(top: 20),
                            child: RaisedButton(
                              elevation: 10.0,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                              },
                              color: Colors.orange,
                              child: Text("LOGIN"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                          ),
                          Container(
                            width: 300,
                            height: 75,
                            padding: EdgeInsets.only(top: 20),
                            child: RaisedButton(
                              elevation: 10.0,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                              },
                              color: Colors.orange,
                              child: Text("SIGN UP"),
                            ),
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

  void _navigateToNextScreen(BuildContext context) {}
}
