import 'package:flutter/material.dart';

class sandbox extends StatefulWidget {
  const sandbox({Key key}) : super(key: key);

  @override
  _sandboxState createState() => _sandboxState();
}

class _sandboxState extends State<sandbox> {
  double _margin = 0;
  bool _togglemargin = false;
  bool _togglewidth = false;
  double _width = 200;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: _width,
        color: Colors.green,
        margin: EdgeInsets.all(_margin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: () {
              setState(() {
                _togglemargin = !_togglemargin;
                if (_togglemargin) {
                  _margin = 20;
                } else {
                  _margin = 0;
                }
              });
              child:
              Text(
                "margin",
                style: TextStyle(color: Colors.black),
              );
            }),
            RaisedButton(onPressed: () {
              setState(() {
                _togglewidth = !_togglewidth;
                if (_togglewidth) {
                  _width = 400;
                } else {
                  _width = 200;
                }
              });
              child:
              Text("width");
            })
          ],
        ),
      ),
    );
  }
}
