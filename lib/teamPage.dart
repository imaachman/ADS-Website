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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      border: Border.all(
                        width: 5.0,
                        color: Colors.tealAccent[400]
                      )
                    ),
                    height: 250.0,
                    width: 250.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: Image.network(image, fit: BoxFit.cover,)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(name, style: GoogleFonts.raleway(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                  Text(designation, style: GoogleFonts.raleway(fontSize: 18.0, color: Colors.grey[600]),),
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
                teamTile("https://i.pinimg.com/736x/f4/3b/7c/f43b7c577592a466279eaee43b8064f3.jpg", "Davindar Gupta", "Advocate"),
                teamTile("https://i.pinimg.com/originals/37/f9/b8/37f9b89a8dce55eeed9c2e34801e8afd.jpg", "Aarti Garg", "Advocate"),
                teamTile("https://im.indiatimes.in/photogallery/2013/Oct/2_1381415253.jpg", "Dinkar Gupta", "Chartered Accountant"),
                teamTile("https://c.ndtvimg.com/2020-05/pub75bl8_virat-kohli-afp_625x300_03_May_20.jpg", "Sagar Jindal", "Marketing Professional"),
                teamTile("https://i.pinimg.com/originals/cd/e4/98/cde498566b9096a02c9563d3d1fb5dfa.jpg", "Sanjay Jindal", "Advisor"),
                teamTile("https://pbs.twimg.com/profile_images/1180491411172413440/AunoqDQW_400x400.jpg", "Vikas Garg", "Advisor"),
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