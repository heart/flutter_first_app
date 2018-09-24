import 'package:flutter/material.dart';
import 'models/product_model.dart';

class Products extends StatelessWidget {
  final List<ProductModel> products;

  Products([this.products = const []]);

  Widget _buildProductItem(context, index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index].image ),
          Text(products[index].title),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("View Detail"),
                onPressed: () {
                  Navigator.pushNamed<bool>(context, '/product/$index');
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildListView() {
    Widget productList;
    if (products.length == 0) {
      productList = Center(
        child: Text("No Product."),
      );
    } else {
      productList = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return _buildListView();
  }
}
