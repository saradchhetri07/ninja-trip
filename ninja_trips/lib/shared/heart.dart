import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _colorTween;
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(microseconds: 1000), vsync: this);

    _colorTween = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, _) {
          return IconButton(
              icon: Icon(
                Icons.favorite,
                color: _colorTween.value,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  _isSelected = !_isSelected;
                  _isSelected ? _controller.forward() : _controller.reverse();
                });
              });
        });
  }
}
