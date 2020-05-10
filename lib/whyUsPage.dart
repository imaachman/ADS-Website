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
        ],
      ),
    );
  }
}