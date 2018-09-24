import 'package:flutter/material.dart';
import 'product_listing_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  String _emailValue;
  String _passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(35.0),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
                onChanged: (String v) {
                  setState(() {
                    _emailValue = v;
                  });
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                onChanged: (String v) {
                  setState(() {
                    _passwordValue = v;
                  });
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "products");
                  }),
            ],
          ),
        ));
  }
}
