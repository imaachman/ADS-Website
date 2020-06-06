import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  Widget appBarTiles(String title, String route) {
    return RaisedButton(
      onPressed: () {Navigator.pushNamed(context, route);},
      hoverColor: Colors.red[100],
      splashColor: Colors.red[200],
      color: Colors.white,
      elevation: 0.0,
      hoverElevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: Text(
            title, 
            style: GoogleFonts.comfortaa(
              color: Colors.grey[700], 
              fontSize: 18.0, 
              fontWeight: FontWeight.bold,
            ),
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      child: Container(
        height: 150.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: RaisedButton(
                elevation: 0.0,
                hoverColor: Colors.red[100],
                hoverElevation: 0.0,
                splashColor: Colors.red[300],
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                onPressed: () {Navigator.pushNamed(context, "/");},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/ADSLogo.png"),),
                )
              ),
            ),
            Flexible(
              child: Container(
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  //runSpacing: 5.0,
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      appBarTiles("Home", "/"),
                      appBarTiles("About", "/about"),
                      appBarTiles("Services", "/services"),
                      appBarTiles("Team", "/team"),
                      appBarTiles("Contact", "/contact"),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}