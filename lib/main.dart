import 'package:flutter/material.dart';

//import 'package:flutter/rendering.dart';
//import 'pages/login_page.dart';
import 'pages/product_listing_page.dart';
import 'pages/product.dart';
import 'pages/manage_product_page.dart';

void main() {
  //debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: MaterialColor(0xff0ea572, {
          50: Color(0xffe2f4ee),
          100: Color(0xffb7e4d5),
          200: Color(0xff87d2b9),
          300: Color(0xff56c09c),
          400: Color(0xff32b387),
          500: Color(0xff0ea572),
          600: Color(0xff0c9d6a),
          700: Color(0xff0a935f),
          800: Color(0xff088a55),
          900: Color(0xff047942)
        }),
        accentColor: Colors.indigo,
      ),
      // home: LoginPage(),
      routes: {
        // "/":(BuildContext context) => LoginPage(),
        "/": (BuildContext context) => ProductListingPage(_products, _addProduct, _deleteProduct),
        "admin": (BuildContext context) => ManageProductsPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElement = settings.name.split('/');
        if (pathElement[0] != '') {
          return null;
        }
        if (pathElement[1] == 'product') {
          final int index = int.parse(pathElement[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) =>
                  ProductPage('product', _products[index]['image'], index));
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          String _pagename = settings.name;

          return Scaffold(
            appBar: AppBar(
              title: Text("Unknow Page"),
            ),
            body: Center(
                child: Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Text("Unknow Page $_pagename"),
                RaisedButton(
                  child: Text("Back to Home Page"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                )
              ],
            )),
          );
        });
      },
    );
  }
}
