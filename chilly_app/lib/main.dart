import 'package:chilly_app/screens/category_screen.dart';
import 'package:chilly_app/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:chilly_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFFFCEDE9),
          accentColor: Color(0xFFFE9701),
          backgroundColor: Color(0xFFFCEDE9),
          highlightColor: Color(0xFF780A16),
          cardColor: Color(0xFFEF8974),
          iconTheme: IconThemeData(color: Color(0xFFEF8974)),
        ),
        initialRoute: '/HomeScreen',
        routes: {
          '/HomeScreen': (context) => HomeScreen(),
          '/CategoryScreen': (context) => CategoryScreen(),
          '/ProductScreen': (context) => ProductScreen(),
        });
  }
}
