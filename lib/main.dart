import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(AppRun());
}

class AppRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFF336699)),
      home: HomePage(title: 'Flutter Demo Home Page ooo'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      backgroundColor: Colors.green,
      body: Container(
          child: Center(
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: LbsText(
                          fontSize: 16,
                          title: "Username 1",
                          description: "Please, insert you username / email",
                          icon: Icons.person),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: LbsText(
                          fontSize: 16,
                          title: "Username 2",
                          description: "Please, insert you username / email",
                          icon: Icons.person),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: LbsText(
                          fontSize: 16,
                          title: "Username 3",
                          description: "Please, insert you username / email",
                          icon: Icons.person),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: LbsText(
                          fontSize: 16,
                          title: "Username 4",
                          description: "Please, insert you username / email",
                          icon: Icons.person),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: LbsText(
                          fontSize: 16,
                          title: "Username 5",
                          description: "Please, insert you username / email",
                          icon: Icons.person),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: LbsText(
                          fontSize: 16,
                          title: "Username 6",
                          description: "Please, insert you username / email",
                          icon: Icons.person),
                    ),
                    LbsText(
                      fontSize: 16,
                      title: "Password",
                      description: "Please, insert your password",
                      icon: Icons.lock,
                      password: true,
                    )
                  ],
                ))
          )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LbsText extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final double fontSize;
  final IconData icon;
  final bool password;

  LbsText(
      {Key key,
      this.title = "Enter Your Input Title",
      this.description,
      this.color = Colors.white,
      this.fontSize = 12,
      this.icon = Icons.remove_red_eye,
      this.password = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      // cursorColor: Colors.red,
      // cursorRadius: Radius.circular(1),
      // cursorWidth: 16.0,
      textAlign: TextAlign.start,
      obscureText: this.password,
      decoration: InputDecoration(
        // prefix: Icon(
        //   this.icon,
        //   size: 20,
        //   color: this.color.withOpacity(0.8),
        // ),
        prefixIcon: Icon(this.icon,
            size: this.fontSize, color: this.color.withOpacity(0.8)),
        suffixIcon: FlatButton(
          onPressed: () => print("yunus tıkladı"),
          child: Icon(Icons.remove_red_eye),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: this.color.withOpacity(0.5), width: 0.5),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: this.color.withOpacity(0.5), width: 0.5),
        ),
        labelText: this.title,
        labelStyle: TextStyle(color: this.color, fontSize: this.fontSize),
        // hintText: this.title,
        // hintStyle: TextStyle(color: this.color),
        helperText: this.description,
        helperStyle: TextStyle(color: this.color.withOpacity(0.8)),
      ),
      style: TextStyle(
          color: this.color,
          fontWeight: FontWeight.w300,
          fontSize: this.fontSize),
    );
  }
}
