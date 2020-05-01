import 'package:candy_shop/pages/products.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Color(0xFFF9CC4B),
        brightness: Brightness.light,
      ),
      home: ProductsPage(),
    );
  }
}
