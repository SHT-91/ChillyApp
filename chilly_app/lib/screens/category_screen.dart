import 'package:chilly_app/widgets/product_list.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            actions: <Widget>[
              IconButton(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                icon: Icon(Icons.search),
                iconSize: 30.0,
                color: Theme.of(context).iconTheme.color,
                onPressed: () {},
              ),
            ]),
        ProductList()
      ]),
    );
  }
}
