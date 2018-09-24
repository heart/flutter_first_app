import "package:flutter/material.dart";
import 'package:flutter_course/models/product_model.dart';
import 'package:flutter_course/products.dart';

class ProductListingPage extends StatelessWidget {
  final List<ProductModel> products;

  ProductListingPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Main Menu"),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, "admin");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body:Products(products)
      // ProductManager(products),
    );
  }
}
