import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: new EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Theme.of(context).iconTheme.color,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).iconTheme.color.withOpacity(0.5),
              offset: Offset(0.0, 5.0),
              blurRadius: 8,
            )
          ]),
    );
  }
}
