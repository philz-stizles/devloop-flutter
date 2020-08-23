import 'package:devloop_flutter/apps/tastebuds/main_screen.dart';
import 'package:devloop_flutter/apps/tastebuds/screens/categories_screen.dart';
import 'package:devloop_flutter/apps/tastebuds/screens/favorites_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasteBudsAuthScreen extends StatefulWidget {
  @override
  _TasteBudsAuthScreenState createState() => _TasteBudsAuthScreenState();
}

class _TasteBudsAuthScreenState extends State<TasteBudsAuthScreen> {
  static const routeName = '';
  
  void _login() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => TasteBudsMainScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // A new Screen should return a Scaffold
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Center(
            child: Form(
                child: ListView(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: 'User name'),
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
                RaisedButton(child: Text('Login'), onPressed: null)
              ],
            )),
          )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('Powered by DevLoop')],
            ),
          )
        ],
      ),
    ));
  }
}
