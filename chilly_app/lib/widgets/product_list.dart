import 'package:chilly_app/models/product_model.dart';
import 'package:flutter/material.dart';

import 'add_cart_button.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          Product product = products[index];
          return Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ProductScreen', arguments: product);
                },
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: new EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).iconTheme.color,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context)
                              .iconTheme
                              .color
                              .withOpacity(0.5),
                          offset: Offset(0.0, 5.0),
                          blurRadius: 8.0,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          product.name,
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                        Text(
                          product.price.toString() + ':-',
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 6,
                right: 16,
                child: AddCartButton(),
              ),
            ],
          );
        },
        childCount: products.length,
      ),
    );
  }
}
