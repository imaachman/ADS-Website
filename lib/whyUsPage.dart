import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyUsPage extends StatefulWidget {
  @override
  _WhyUsPageState createState() => _WhyUsPageState();
}

class _WhyUsPageState extends State<WhyUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[          
          Positioned(
          top: 320,
          left: -270,
          child: Transform.rotate(
            angle: pi / 2,
            child: Text("Why us?", style: GoogleFonts.comfortaa(color: Colors.grey[800], fontSize: 180.0, fontWeight: FontWeight.bold),)
          ),
        ),

         Center(
           child: Container(
             height:MediaQuery.of(context).size.height / 2.5,
             width: MediaQuery.of(context).size.width * 2/3,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          border: Border.all(
                            width: 5.0,
                            color: Colors.tealAccent[400]
                          )
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.circular(150.0), child: Image(image: NetworkImage("https://image.freepik.com/free-vector/portfolio-concept-illustration_114360-200.jpg"),)),
                      ),
                      SizedBox(height: 20.0,),
                      Text("25+ years of experience", style: GoogleFonts.raleway(fontSize: 30.0, color: Colors.grey[600]),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          border: Border.all(
                            width: 5.0,
                            color: Colors.tealAccent[400]
                          )
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.circular(150.0), child: Image(image: NetworkImage("https://image.freepik.com/free-vector/group-business-people-avatar-character_24877-57314.jpg"),)),
                      ),
                      SizedBox(height: 20.0,),
                      Text("Team of Domain Experts", style: GoogleFonts.raleway(fontSize: 30.0, color: Colors.grey[600]),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          border: Border.all(
                            width: 5.0,
                            color: Colors.tealAccent[400]
                          )
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.circular(150.0), child: Image(image: NetworkImage("https://image.freepik.com/free-vector/illustration-hand-holding-golden-dollar-symbol_24381-624.jpg"),)),
                      ),
                      SizedBox(height: 20.0,),
                      Text("Fast, Reliable, Affordable", style: GoogleFonts.raleway(fontSize: 30.0, color: Colors.grey[600]),)
                    ],
                  )
                ],
              ),
           ),
         )        
        ],
      ),
    );
  }
}