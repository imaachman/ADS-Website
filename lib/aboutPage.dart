import 'dart:math';

import 'package:ads_website/components.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  Widget serviceTile(String image, String name) {
    return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120.0),
                      border: Border.all(
                        width: 5.0,
                        color: Colors.blue[400]
                      )
                    ),
                    height: 200.0,
                    width: 200.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120.0),
                      child: Image.network(image, fit: BoxFit.cover,)
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(name, style: GoogleFonts.raleway(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.grey[600]),),
                ],
              ),
            );
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
        child: Container(
          width: 2000.0,
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: [
              Container(
                width: 900.0,
                padding: const EdgeInsets.all(75.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: GoogleFonts.comfortaa(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.grey[900]),
                    ),
                    Container(width: 120.0, height: 1.0, color: Colors.grey[900]),
                    SizedBox(height: 50.0,),
                    Text(
                      "ADS is a tax firm based in SAS Nagar, Punjab. We provide a wide range of services across accounting and taxation. Whether you are an individual, a small business, or a big company, our diverse team of dedicated domain experts can handle all your business needs. Our technology driven systems ensure us to provide the best services at affordable prices. With over 25+ experience in taxation, ADS is the leading tax firm in all of Tricity.",
                      style: GoogleFonts.comfortaa(fontSize: 18.0, height: 2.0, color: Colors.grey[700]),
                    ),
                    Text(
                      "\nCheck out our services!",
                      style: GoogleFonts.comfortaa(fontSize: 18.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 50.0,),
                    RaisedButton(
                          color: Colors.blue[100],
                          hoverColor: Colors.blue[300],
                          elevation: 0.0,
                          hoverElevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Text("Check out!", style: GoogleFonts.raleway(fontSize: 16.0, fontWeight: FontWeight.bold),),
                          onPressed: () {Navigator.pushNamed(context, "/services");},
                        ),
                  ],
                ),
              ),
              Container(
                width: 900.0,
                padding: EdgeInsets.only(top: 80.0),
                child: GFCarousel(
                  height: 700.0,
                  enlargeMainPage: true,
                  autoPlay: true,
                  items: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage("assets/servicesVector.png"),
                          ),
                        ),
                        Text("WIDE RANGE OF SERVICES", style: GoogleFonts.stardosStencil(fontSize: 24.0))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage("assets/teamVector.png"),
                          ),
                        ),
                        Text("TEAM OF DEDICATED PROFESSIONALS", style: GoogleFonts.stardosStencil(fontSize: 24.0))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage("assets/techVector.png"),
                          ),
                        ),
                        Text("TECHNOLOGY DRIVEN SYSTEMS", style: GoogleFonts.stardosStencil(fontSize: 24.0))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage("assets/affordableVector.png"),
                          ),
                        ),
                        Text("FAST, RELIABLE, AFFORDABLE", style: GoogleFonts.stardosStencil(fontSize: 24.0))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    // return Container(
    //   child: Column(
    //     children: <Widget>[
    //       Text("About", style: GoogleFonts.comfortaa(color: Colors.grey[800], fontSize: 200.0, fontWeight: FontWeight.bold),),
          
    //       Container(
    //         padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
    //         width: 800.0,
    //         child: Text(
    //           "ADS is a one stop solution for all your accounting and tax needs. The firm is backed by a team of highly dedicated professionals with years of experience across a range of business needs. Comprising of Chartered Accountants, Advocates, MBA's, etc., our diverse team is highly competent to serve all kinds of needs no matter the business. Added to this is a completely technology driven system which enables us to provide valuable services at a fraction of cost, without you ever having to step out of your home. Based in S.A.S Nagar, Punjab, ADS is the best tax firm in all of Tricity in terms of quality, reliability and affordability.",
    //           style: GoogleFonts.raleway(fontSize: 16.0, color: Colors.grey[600]),
    //         )
    //       ),

    //       SizedBox(height: 50.0,),

    //       Text("SERVICES OFFERED", style: GoogleFonts.comfortaa(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.grey[800])),

    //       SizedBox(height: 30.0,),
          
    //       Center(
    //         child: Container(
    //           width: 800.0,
    //           child: Wrap(
    //             spacing: 30.0,
    //             runSpacing: 30.0,
    //             alignment: WrapAlignment.center,
    //             children: [
    //               serviceTile("https://image.freepik.com/free-vector/cartoon-businessman-hand-holding-id-card_44703-269.jpg", "Pan Services"),
    //               serviceTile("https://image.freepik.com/free-vector/business-people-bankers-with-money-illustration_53876-40435.jpg", "GST Related Services"),
    //               serviceTile("https://image.freepik.com/free-vector/tax-time_24877-49139.jpg", "Income Tax Return"),
    //               serviceTile("https://image.freepik.com/free-vector/calculator-concept-illustration_114360-1194.jpg", "Accounting"),
    //               serviceTile("https://image.freepik.com/free-vector/business-consultant-puzzled-man-working-laptop_1262-20610.jpg", "Tax Consultancy"),
    //               serviceTile("https://image.freepik.com/free-vector/businessman-holding-pencil-big-complete-checklist-with-tick-marks-business-organization-achievements-goals-vector-concept_53562-6499.jpg", "Explore more!")
    //             ],
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}