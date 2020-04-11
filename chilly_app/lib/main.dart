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
          primaryColor: Colors.white,
          accentColor: Color(0xFFEF8974),
          backgroundColor: Color(0xFFFCEDE9),
          highlightColor: Color(0xFF780A16),
          cardColor: Color(0xFFEF8974),
          iconTheme: IconThemeData(color: Color(0xFFEF8974)),
          buttonColor: Colors.white,
        ),
        initialRoute: '/HomeScreen',
        routes: {
          '/HomeScreen': (context) => HomeScreen(),
          '/CategoryScreen': (context, animation, secondaryAnimation) => CategoryScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {

          },
          '/ProductScreen': (context) => ProductScreen(),
        });
  }
}
