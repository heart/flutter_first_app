import 'package:flutter/material.dart';
import "product_listing_page.dart";
import "product_create_page.dart";
import "my_product_listing_page.dart";

class ManageProductsPage extends StatelessWidget {
  ManageProductsPage();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                    Navigator.pushReplacementNamed(context, "/");
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Products Manager"),
          bottom: TabBar(indicatorColor: Color(0xff047942), tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text: "Create Product",
            ),
            Tab(icon: Icon(Icons.list), text: "My Product"),
          ]),
        ),
        body: TabBarView(children: <Widget>[
          ProductCreatePage(),
          MyProductListingPage(),
        ]),
      ),
    );
  }
}
