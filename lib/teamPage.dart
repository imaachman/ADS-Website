import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {

  Widget teamTile(String image, String name, String designation) {
    return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 250.0,
                    width: 250.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: Image.network("https://picsum.photos/250?image=9", fit: BoxFit.cover,)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(name, style: GoogleFonts.raleway(fontSize: 30.0, fontWeight: FontWeight.bold),),
                  Text(designation, style: GoogleFonts.raleway(fontSize: 18.0),),
                ],
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 250,
          left: -250,
          child: Transform.rotate(
            angle: pi / 2,
            child: Text("Team", style: GoogleFonts.comfortaa(color: Colors.grey[800], fontSize: 250.0, fontWeight: FontWeight.bold),)
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 2/3,
            child: GridView.count(
              crossAxisCount: 3,
              primary: false,
              children: <Widget>[
                teamTile("image", "Davindar Gupta", "Advocate"),
                teamTile("image", "Aarti Garg", "Advocate"),
                teamTile("image", "Dinkar Gupta", "Chartered Accountant"),
                teamTile("image", "Sagar Jindal", "Marketing Professional"),
                teamTile("image", "Sanjay Jindal", "Advisor"),
                teamTile("image", "Vikas Garg", "Advisor"),
                // Padding(
                //   padding: EdgeInsets.all(200.0),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       SizedBox(
                //         height: 200.0,
                //         width: 200.0,
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(100.0),
                //           child: Image.network("https://picsum.photos/250?image=9"),
                //         ),
                //       ),
                //       SizedBox(
                //         height: 20.0,
                //       ),
                //       Text("Davinder Gupta", style: GoogleFonts.raleway(fontSize: 20.0),)
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ],
    );
  }
}