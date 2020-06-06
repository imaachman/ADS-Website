import 'package:ads_website/components.dart';
import 'package:ads_website/data.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MemberPage extends StatefulWidget {
  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: NavBar(),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)
            ),
            child: Container(
              height: 700.0,
              width: 1500.0,
              child: Center(
                child: SingleChildScrollView(
                  child: Wrap(
                    alignment: WrapAlignment.spaceAround,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [

                      Hero(
                        tag: selectedMember["name"],
                        child: AvatarGlow(
                          endRadius: 200.0,
                          glowColor: selectedMember["color"],
                          duration: Duration(milliseconds: 2000),
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 100),
                          child: Material(
                            elevation: 8.0,
                            borderRadius: BorderRadius.circular(150.0),
                            child: Container(
                              height: 250.0,
                              width: 250.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(150.0),
                                child: Image.network(selectedMember["image"], fit: BoxFit.cover,)
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: 750.0,
                        padding: EdgeInsets.all(50.0),
                        child: Text(
                          "ADS is a one stop solution for all your accounting and tax needs. The firm is backed by a team of highly dedicated professionals with years of experience across a range of business needs. Comprising of Chartered Accountants, Advocates, MBA's, etc., our diverse team is highly competent to serve all kinds of needs no matter the business. Added to this is a completely technology driven system which enables us to provide valuable services at a fraction of cost, without you ever having to step out of your home. Based in S.A.S Nagar, Punjab, ADS is the best tax firm in all of Tricity in terms of quality, pricing and reliability.",
                          style: GoogleFonts.comfortaa(fontSize: 18.0, height: 2),
                        )
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}