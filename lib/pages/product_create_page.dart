import 'package:flutter/material.dart';
import 'package:flutter_course/models/product_model.dart';
import 'package:flutter_course/text_theme.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(
              style: AppTextTheme.INPUT_TEXT_STYLE,
              decoration: InputDecoration(labelText: 'Product title'),
              onChanged: (String t) {
                setState(() {
                  titleValue = t;
                });
              },
            ),
            TextField(

              style: AppTextTheme.INPUT_TEXT_STYLE,
              decoration: InputDecoration(labelText: 'Product description'),
              maxLines: 4,
              onChanged: (String t) {
                setState(() {
                  descriptionValue = t;
                });
              },
            ),
            TextField(
              style: AppTextTheme.INPUT_TEXT_STYLE,
              decoration: InputDecoration(labelText: 'Product price'),
              keyboardType: TextInputType.number,
              onChanged: (String t) {
                setState(() {
                  priceValue = double.parse(t);
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text('Save'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                widget.addProduct(ProductModel(
                    title: titleValue,
                    description: descriptionValue,
                    price: priceValue));
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ));
  }

  showModalView(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Text("This is modal view"),
          );
        });
  }
}
