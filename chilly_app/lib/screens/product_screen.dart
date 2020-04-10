import 'package:chilly_app/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context).settings.arguments as Product;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          floating: false,
          leading: IconButton(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 30.0,
            color: Theme.of(context).iconTheme.color,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverFillRemaining(
            child: Text(
          product.name,
          style: TextStyle(color: Theme.of(context).accentColor),
        ))
      ]),
    );
  }
}
