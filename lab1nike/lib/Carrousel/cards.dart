import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ImgCard extends StatefulWidget {
  final VoidCallback onPressed;
  String rutaImg = "";
  String modelo = "";
  String precio = "";
  String descripcion = "";
  ImgCard(Key key, this.rutaImg, this.precio, this.modelo, this.descripcion,
      this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _Card();
  }
}

//Clase anidada
class _Card extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: widget.onPressed,
          child: Container(
            height: 300,
            width: 328,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                //color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  scale: 1.8,
                  image: AssetImage(widget.rutaImg),
                )),
          ),
        ),
        Row(
          children: [
            Container(
              width: 240,
                margin: EdgeInsets.only(top: 320, left: 25),
                child: Text(
                  widget.modelo,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              width: 60,
                margin: EdgeInsets.only(top: 320),
                child: Text(
                  widget.precio,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
        Row(
          children: [
            Container(
                width: 250,
                margin: EdgeInsets.only(top: 360, left: 25),
                child: Text(
                  widget.descripcion,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
            Container(
              width: 50,
              margin: EdgeInsets.only(top: 360),
              child: Icon(Icons.favorite, color: Colors.red, size: 35),
            )
          ],
        )
      ],
    );
  }
}
