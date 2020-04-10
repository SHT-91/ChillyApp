import 'package:chilly_app/models/product_model.dart';
import 'package:chilly_app/widgets/add_cart_button.dart';
import 'package:flutter/material.dart';

class FavouritesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          child: Text(
            'Favourites',
            style: TextStyle(
              color: Theme.of(context).highlightColor,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              Product product = products[index];
              return Stack(
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 110,
                    margin: new EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Theme.of(context).iconTheme.color,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).iconTheme.color.withOpacity(0.5),
                            offset: Offset(0.0, 5.0),
                            blurRadius: 8.0,
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              product.price.toString() + ":-",
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: AddCartButton(),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
