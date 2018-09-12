import 'package:flutter/material.dart';
import 'text_theme.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addProduct({'title': 'food', 'image': 'assets/food.jpg'});
          },
          child: Text(
            'เพิ่ม อาหาร',
            style: AppTextTheme.BUTTON_TEXT_STYLE,
          ),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'add to cart');
          },
          child: Text(
            'อื่นๆ',
            style: AppTextTheme.BUTTON_TEXT_STYLE,
          ),
        )
      ],
    );
  }
}
