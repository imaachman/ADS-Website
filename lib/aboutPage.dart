import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
          top: 250,
          left: -230,
          child: Transform.rotate(
            angle: pi / 2,
            child: Text("About", style: GoogleFonts.comfortaa(color: Colors.grey[800], fontSize: 200.0, fontWeight: FontWeight.bold),)
          ),
        ),
        Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                width: MediaQuery.of(context).size.width * 2/3,
                child: Text("CA Services online is a product of CA ON WEB Private Limited. We are providing all tax & compliance services in India whether online or offline using the most secure technology with upfront transparent pricing approach and helping businesses to grow. SOLE OBJECTIVE OF THIS PLATFORM is to be of help to businesses looking for efficient and cost effective solution to manage their BOOK KEEPING, TAX FILING, LEGAL REGISTRATIONS, COMPANY COMPLIANCE, ROC FILING, AUDIT SERVICES, TAX ADVISORY, GST FILING. WHY WE ARE DIFFERENT? Easily accessible & user friendly tax & compliance services, Understand the changing business environment, Much satisfied & happy clientele motivates us, 600+ experts across India on our expert panel in our online directory caonweb.com, Providing services at an affordable price.")
              ),
            ],
          ),
        )
        ],
      ),
    );
  }
}