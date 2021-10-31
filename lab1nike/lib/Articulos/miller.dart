import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lab1/boton.dart';
import 'package:lab1/paginasBarra/home.dart';

class Miller extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171717),
        body: Stack(
          children: [
            Container(
              height: 300,
              width: 328,
              margin: EdgeInsets.only(top: 175, left: 25),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.scaleDown,
                scale: 1.8,
                image: AssetImage("assets/img/barely.png"),
              )),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 140, left: 25),
                    child: Text(
                      "React Miller",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 140, left: 100),
                    child: Text(
                      "\$130",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 180, left: 25),
              child: RatingBar.builder(
                  itemCount: 5,
                  initialRating: 3.4,
                  itemSize: 20,
                  itemBuilder: (context, _) {
                    return Icon(Icons.star, color: Colors.yellow);
                  },
                  onRatingUpdate: (raiting) {
                    print(raiting);
                  }),
            ),
            Container(
                margin: EdgeInsets.only(top: 450, left: 25),
                child: Text(
                  "Made for dependability on your long runs, its\ninrurive design offers a locked-in fit and a\ndurable feet",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(top: 50, left: 10),
                alignment: Alignment.topCenter,
                constraints: BoxConstraints.expand(),
                child: Row(
                  children: [
                    FloatingActionButton(
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                      ),
                      elevation: 90.0,
                      backgroundColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(top: 50, left: 250),
                alignment: Alignment.topCenter,
                constraints: BoxConstraints.expand(),
                child: Row(
                  children: [
                    FloatingActionButton(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      elevation: 90.0,
                      backgroundColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.favorite, color: Colors.red),
                      elevation: 90.0,
                      backgroundColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 635),
              child: Center(
                child: ButtonInk(
                    text: "Add to cart",
                    heightB: 60,
                    widthB: 330,
                    onPressed: () {}),
              ),
            )
          ],
        ));
  }
}
