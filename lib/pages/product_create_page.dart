import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
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

        child: Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Product title'),
          onChanged: (String t) {
            setState(() {
              titleValue = t;
            });
          },
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Product description'),
          maxLines: 4,
          onChanged: (String t) {
            setState(() {
              descriptionValue = t;
            });
          },
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Product price'),
          keyboardType: TextInputType.number,
          onChanged: (String t) {
            setState(() {
              priceValue = double.parse(t);
            });
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
