import 'dart:math';

import 'package:ads_website/components.dart';
import 'package:ads_website/memberPage.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {

  Widget teamTile(Map _member) {
    return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: _member["name"],
                    child: AvatarGlow(
                      endRadius: 120.0,
                      glowColor: _member["color"],
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: GestureDetector(
                        onTap: () {
                          selectedMember = _member;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MemberPage()));
                        },
                        child: Material(
                          elevation: 8.0,
                          borderRadius: BorderRadius.circular(150.0),
                          child: Container(
                            height: 150.0,
                            width: 150.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(150.0),
                              child: Image.network(_member["image"], fit: BoxFit.cover,)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(_member["name"], style: GoogleFonts.comfortaa(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.grey[900]),),
                  Text(_member["designation"], style: GoogleFonts.raleway(fontSize: 18.0, color: Colors.grey[600]),),
                ],
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: NavBar(),
      ),
      body: Container(
        width: 2000.0,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                width: 900.0,
                height: 900.0,
                padding: EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Team",
                      style: GoogleFonts.comfortaa(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.grey[900]),
                    ),
                    Container(width: 120.0, height: 1.0, color: Colors.grey[900]),
                    SizedBox(height: 50.0,),
                    Text(
                      "We are a team of passionate professionals with years of experience in the respective domains. The diversity in the team is a major factor that allows us to fulfill customers' needs across domains. Our team's commitment is to provide the best customer experience to every single client.",
                      style: GoogleFonts.comfortaa(fontSize: 24.0, height: 2.0, color: Colors.grey[700]),
                    )
                  ],
                ),
              ),
              Container(
                width: 900.0,
                padding: EdgeInsets.all(50.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 30.0,
                  runSpacing: 30.0,
                  children: <Widget>[
                    teamTile(members["Devinder"]),
                    teamTile(members["Aarti"]),
                    teamTile(members["Dinkar"]),
                    teamTile(members["Sagar"]),
                    teamTile(members["Sanjay"]),
                    teamTile(members["Vikas"]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}