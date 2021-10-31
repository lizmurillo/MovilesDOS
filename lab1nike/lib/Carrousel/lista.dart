import 'package:flutter/material.dart';
import 'package:lab1/Articulos/miller.dart';
import 'cards.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImgCard(key, "assets/img/white.png", "\$130", "React Miller", "Made for dependability on your\nlong runs, its inrurive design", 
          (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Miller()));
          }),
          ImgCard(key, "assets/img/2.png", "\$190", "Af1 Shadow", "Dimensiones del paquete:\n13.11 x 9.65 x 4.41 pulgadas\n1.96 Libras", 
          (){}),
          ImgCard(key, "assets/img/3.png", "\$40", "TIAMOU", "Rubber outsole provides shock\nabsorption, prevents twisting,\nwear-resistant", 
          (){}),
        ],
      ),
    );
  }
}
