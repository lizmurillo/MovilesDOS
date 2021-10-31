import 'package:flutter/material.dart';

class ButtonInk extends StatefulWidget {
  final VoidCallback onPressed;
  double heightB = 0.0;
  double widthB = 0.0;
  final String text;

  ButtonInk(
      {Key key,
      @required this.text,
      @required this.heightB,
      @required this.widthB,
      @required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    return _ButtonInk();
  }
}

class _ButtonInk extends State<ButtonInk> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(bottom: 05, left: 10, right: 10),
        height: widget.heightB,
        width: widget.widthB,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Color(0xFFff3838),
              Color(0xFFff4d4d)
            ],
            begin: FractionalOffset(0.1,0.1),
            end: FractionalOffset(1.0,0.6),
            stops: [0.0,0.6]
          )
        ),
        child: Center(
          child: Text(widget.text,
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ),
    );
  }
}
