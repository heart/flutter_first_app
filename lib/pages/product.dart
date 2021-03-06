import "package:flutter/material.dart";
import 'package:flutter_course/app_color.dart';
import 'dart:async';
import 'package:flutter_course/models/product_model.dart';

class ProductPage extends StatelessWidget {
  final ProductModel product;

  ProductPage(this.product);

  void _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Confirm to delte this item!'),
            actions: <Widget>[
              FlatButton(
                child: Text('DISCARD'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('CONFIRM'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(product.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(product.image),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(product.description),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                  color: AppColor.DANGER,
                  child: Text("Delete"),
                  onPressed: () => _showWarningDialog(context)),
            ),
          ],
        ),
      ),
    );
  }
}
