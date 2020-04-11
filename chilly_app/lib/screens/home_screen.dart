import 'package:chilly_app/widgets/cart_overlay.dart';
import 'package:chilly_app/widgets/categories_carousel.dart';
import 'package:flutter/material.dart';
import 'package:chilly_app/widgets/main_card.dart';
import 'package:chilly_app/widgets/favourites_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(children: <Widget>[
        CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).backgroundColor,
              floating: false,
              leading: IconButton(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                icon: Icon(Icons.menu),
                iconSize: 30.0,
                color: Theme.of(context).iconTheme.color,
                onPressed: () {},
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
          SliverList(
            delegate: SliverChildListDelegate([
              MainCard(),
              FavouritesCarousel(),
              CategoriesCarousel(),
              Container(
                height: 100,
              )
            ]),
          ),
        ]),
        CartOverlay()
      ]),
    );
  }
}
