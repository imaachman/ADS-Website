import 'package:ads_website/aboutPage.dart';
import 'package:ads_website/components.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Container(
          //height: 900.0,
          width: 2000.0,
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(50.0),
                child: Image(
                  image: AssetImage("ADSLogoWithTag.png"),
                ),
              ),
                AnimationLimiter(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: Duration(milliseconds: 2000),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: 600.0,
                        //verticalOffset: 900.0,
                        child: widget,
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.all(50.0),
                          width: 1000.0,
                          // child: Text(
                          //   "ADS is a one stop solution for all your accounting and tax needs. The firm is backed by a team of highly dedicated professionals with years of experience across a range of business needs. Comprising of Chartered Accountants, Advocates, MBA's, etc., our diverse team is highly competent to serve all kinds of needs no matter the business. Added to this is a completely technology driven system which enables us to provide valuable services at a fraction of cost, without you ever having to step out of your home. Based in S.A.S Nagar, Punjab, ADS is the best tax firm in all of Tricity in terms of quality, reliability and affordability.",
                          //   style: GoogleFonts.comfortaa(fontSize: 18.0, color: Colors.grey[600], fontWeight: FontWeight.w500, height: 2.0),
                          // )
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Your one stop solution for ",
                                style: GoogleFonts.comfortaa(fontSize: 44.0, color: Colors.grey[700]),
                              ),
                              Row(
                                children: [
                                  Expanded(child: Container()),
                                  RotateAnimatedTextKit(
                                    text: ["Accounting", "Book Keeping", "IT Return Filing"],
                                    textStyle: GoogleFonts.comfortaa(fontSize: 76.0, fontWeight: FontWeight.bold),
                                    repeatForever: true,
                                  ),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ],
                          ),
                        ),
                        RaisedButton(
                          color: Colors.blue[100],
                          hoverColor: Colors.blue[300],
                          elevation: 0.0,
                          hoverElevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Text("Get Started", style: GoogleFonts.raleway(fontSize: 16.0, fontWeight: FontWeight.bold),),
                          onPressed: () {Navigator.pushNamed(context, "/about");},
                        )
                      ]
                    )
                  ),
                )
            ],
          ),
        ),
      )
    );
  }
}