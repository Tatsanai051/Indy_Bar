import 'package:flutter/material.dart';
import 'package:indy_bar/pages/LoginPage.dart';
import 'package:indy_bar/pages/LiquorMenuPage.dart';
import 'package:indy_bar/pages/ShoppingCartPage.dart';
import 'package:indy_bar/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whiskey Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set HomePage as the initial page
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/liquorMenu': (context) => LiquorMenuPage(),
        '/shoppingCart': (context) => ShoppingCartPage(),
      },
    );
  }
}
