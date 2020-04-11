import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CartOverlay extends StatefulWidget {
  final double _containerHeight = 500;
  final double _expandedSheetPosition = 0;
  final double _collapsedSheetPosition = -500;
  @override
  _CartOverlayState createState() => _CartOverlayState();
}

class _CartOverlayState extends State<CartOverlay> {
  double screenHeight = 0.0;
  double _sheetPosition = -500;
  int _milliseconds = 100;
  double _backgroundOpacity = 0.0;
  bool _isIgnored = true;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Stack(children: <Widget>[
      // ** Background Opacity **
      AnimatedOpacity(
        opacity: _backgroundOpacity,
        duration: Duration(milliseconds: _milliseconds),
        child: IgnorePointer(
          ignoring: _isIgnored,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
        ),
      ),
      // ** Sheet Header **
      AnimatedPositioned(
        duration: Duration(milliseconds: _milliseconds),
        curve: Curves.decelerate,
        bottom: _sheetPosition,
        left: 0,
        right: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onVerticalDragUpdate: _handleDragUpdate,
              onVerticalDragEnd: _handleDragEnd,
              child: Container(
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                // ** DragBar **
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                    child: Row(children: <Widget>[
                      Text('299.99:-',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                  )
                ]),
              ),
            ),
            //  ** Sheet Body **
            Container(
              height: widget._containerHeight,
              alignment: Alignment.centerLeft,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    ]);
  }

  _handleDragUpdate(DragUpdateDetails updateDetail) {
    setState(() {
      _milliseconds = 100;
      _sheetPosition += -updateDetail.primaryDelta;

      if (_sheetPosition > widget._expandedSheetPosition) {
        _sheetPosition = widget._expandedSheetPosition;
      } else if (_sheetPosition < widget._collapsedSheetPosition) {
        _sheetPosition = widget._collapsedSheetPosition;
      }
    });
  }

  _handleDragEnd(DragEndDetails endDetail) {
    setState(() {
      _milliseconds = 500;

      if (_sheetPosition >= (0.5 * widget._collapsedSheetPosition)) {
        _sheetPosition = widget._expandedSheetPosition;
        _backgroundOpacity = 0.2;
        _isIgnored = false;
      } else {
        _sheetPosition = widget._collapsedSheetPosition;
        _backgroundOpacity = 0.0;
        _isIgnored = true;
      }
    });
  }
}
