import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "A.D.S.", 
                    style: GoogleFonts.comfortaa(
                      color: Colors.grey[800], 
                      fontSize: 225.0, 
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.grey[600],
                          blurRadius: 8.0,
                          offset: Offset(5.0, 5.0)
                        )
                      ]
                    )
                  ),
                  Text(
                    "Taxation Consultancy Services", 
                    style: GoogleFonts.comfortaa(
                      color: Colors.grey[600],
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: <Widget>[
                Expanded(child: Container()),
                Text(
                  "World class taxation services at fraction of cost.",
                  style: GoogleFonts.raleway(
                    color: Colors.grey[600],
                    fontSize: 45.0
                  ),
                ),
                Divider(),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      );
  }
}