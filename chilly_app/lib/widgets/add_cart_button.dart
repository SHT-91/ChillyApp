import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Theme.of(context).iconTheme.color.withOpacity(0.5),
          offset: Offset(0.0, 5.0),
          blurRadius: 8.0,
        )
      ]),
      child: ClipOval(
        child: Material(
            child: InkWell(
          splashColor: Colors.red,
          onTap: () => print("Container pressed"),
        )),
      ),
    );
  }
}
