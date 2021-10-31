import 'package:flutter/material.dart';
import 'package:lab1/paginasBarra/carrito.dart';
import 'package:lab1/paginasBarra/favorits.dart';
import 'package:lab1/paginasBarra/home.dart';
import 'package:lab1/paginasBarra/camara.dart';

class Navegacion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [Home(), Favoritos(), Carrito(), Camara()];

  void onTapped(int index) {
    setState(() {
      indexP = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexP],
      bottomNavigationBar:
          Theme(data: Theme.of(context).copyWith(canvasColor: Color(0xffced6e0), primaryColor: Colors.black), 
          child: BottomNavigationBar(onTap: onTapped, currentIndex: indexP, items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xff2f3542)), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Color(0xff2f3542)), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Color(0xff2f3542)), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.camera, color: Color(0xff2f3542)), label: ""),
          ],)
          ),
    );
  }
}