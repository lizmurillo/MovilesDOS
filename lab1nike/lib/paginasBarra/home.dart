import 'package:flutter/material.dart';
import 'package:lab1/Carrousel/lista.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171717),
        body: Stack(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 150, left: 20),
                child: Lista()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 610),
                    child: Text(
                      "You might also like ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 610),
                    child: Text(
                      "View All",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 100, left: 60),
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text(_vista),
                //Apariencia
                underline: Container(
                  height: 2,
                  width: 330,
                  color: Colors.white12,
                ),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ));
  }

  //Variables para el menu despegable
  var _list = ['', '', ''];
  String _vista = "New Realeases                      ";
}
