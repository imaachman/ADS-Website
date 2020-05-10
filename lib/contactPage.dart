import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
          top: 320,
          left: -320,
          child: Transform.rotate(
            angle: pi / 2,
            child: Text("Contact", style: GoogleFonts.comfortaa(color: Colors.grey[800], fontSize: 200.0, fontWeight: FontWeight.bold),)
          ),
        ),
        ],
      ),
    );
  }
}