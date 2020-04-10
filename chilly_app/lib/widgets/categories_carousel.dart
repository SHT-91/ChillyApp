import 'package:chilly_app/models/category_model.dart';
import 'package:chilly_app/models/product_model.dart';
import 'package:flutter/material.dart';

class CategoriesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          child: Text(
            'Categories',
            style: TextStyle(
              color: Theme.of(context).highlightColor,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 280.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              Category category = categories[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/CategoryScreen');
                },
                child: Container(
                  height: 280,
                  width: 190,
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
