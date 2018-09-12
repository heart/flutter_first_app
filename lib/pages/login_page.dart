import 'package:flutter/material.dart';
import 'product_listing_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  width: 190.0,
                  height: 190.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/human.png')))),
              RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "listing");
                  }),
            ],
          ),
        ));
  }
}
