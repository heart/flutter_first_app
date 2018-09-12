import "package:flutter/material.dart";
import "../product_manager.dart";

class ProductListingPage extends StatelessWidget {
  Function addProduct;
  Function deleteProduct;
  List<Map<String, String>> products;

  ProductListingPage(this.products, this.addProduct, this.deleteProduct);

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
      body: ProductManager(products, addProduct, deleteProduct),
    );
  }
}
