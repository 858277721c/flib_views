import 'package:flutter/material.dart';

class FAlignmentStack extends StatelessWidget {
  final List<Widget> list = [];

  FAlignmentStack({
    Widget topLeft,
    Widget topCenter,
    Widget topRight,
    Widget centerLeft,
    Widget center,
    Widget centerRight,
    Widget bottomLeft,
    Widget bottomCenter,
    Widget bottomRight,
  }) {
    _addToList(topLeft, Alignment.topLeft);
    _addToList(topCenter, Alignment.topCenter);
    _addToList(topRight, Alignment.topRight);

    _addToList(centerLeft, Alignment.centerLeft);
    _addToList(center, Alignment.center);
    _addToList(centerRight, Alignment.centerRight);

    _addToList(bottomLeft, Alignment.bottomLeft);
    _addToList(bottomCenter, Alignment.bottomCenter);
    _addToList(bottomRight, Alignment.bottomRight);
  }

  void _addToList(Widget child, AlignmentGeometry alignment) {
    if (child == null) {
      return;
    }
    assert(alignment != null);
    list.add(new SizedBox(
      child: new Stack(
        alignment: alignment,
        children: <Widget>[child],
      ),
      width: double.infinity,
      height: double.infinity,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: list,
      alignment: Alignment.center,
    );
  }
}
