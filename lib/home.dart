import 'package:ads_website/aboutPage.dart';
import 'package:ads_website/contactPage.dart';
import 'package:ads_website/homePage.dart';
import 'package:ads_website/teamPage.dart';
import 'package:ads_website/whyUsPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static int _pageIndex = 0;
  PageController _controller = PageController(initialPage: 0, keepPage: true);

  Widget appBarTiles(String title, double fontSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Text(
            title, 
            style: GoogleFonts.comfortaa(
              color: Colors.white, 
              fontSize: fontSize, 
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  color: Colors.grey[600],
                  blurRadius: 5.0,
                  offset: Offset(2.0, 2.0)
                )
              ]
            )
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: BottomAppBar(
            color: Colors.tealAccent[400],
            elevation: 0.0,
            child: Container(
              height: 150.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  appBarTiles("A.D.S.", 60.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        appBarTiles("Home", 40.0),
                        appBarTiles("About", 40.0),
                        appBarTiles("Why us?", 40.0),
                        appBarTiles("Team", 40.0),
                        appBarTiles("Contact", 40.0),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),

      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: <Widget>[
          HomePage(),
          AboutPage(),
          WhyUsPage(),
          TeamPage(),
          ContactPage()
        ],
      )
    );
  }
}