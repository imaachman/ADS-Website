import 'package:ads_website/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {

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
            children: [
              Container(
                width: 800.0,
                height: 900.0,
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Services", 
                      style: GoogleFonts.comfortaa(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.grey[900]),
                    ),
                    Container(width: 120.0, height: 1.0, color: Colors.grey[900]),
                    SizedBox(height: 50.0,),
                    Text("Our wide range of services has something for everyone, from employees to business owners to companies. We provide for specific needs like Tax Consultancy and Book Keeping while also covering the essentials like PAN Card Registration and Income Tax Returns.", 
                      style: GoogleFonts.comfortaa(fontSize: 22.0, height: 2.0, color: Colors.grey[700]),
                    ),
                    Text("While our services are highly Affordable, Quality and Speed are two things that are never compromised. If there is one word to describe our services, it is Reliability.", 
                      style: GoogleFonts.comfortaa(fontSize: 22.0, height: 2.0, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              Container(
                width: 900.0,
                padding: const EdgeInsets.all(50.0),
                    child:  AnimationLimiter(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: Duration(milliseconds: 1000),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: 600.0,
                        verticalOffset: 900.0,
                        child: widget,
                      ),
                      children: List.generate(services.length, (index) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: services[services.keys.toList()[index]]["height"],
                          child: Column(
                            children: [
                              Container(
                                height: 100.0,
                                width: 700.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      services.keys.toList()[index],
                                      style: GoogleFonts.comfortaa(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey[900]),
                                    ),
                                    IconButton(
                                      icon: Icon(services[services.keys.toList()[index]]["height"] == 100.0 ? Icons.add_circle : Icons.do_not_disturb_on),
                                      onPressed: () {
                                        setState(() {
                                          services[services.keys.toList()[index]]["height"] == 100.0 
                                          ? services[services.keys.toList()[index]]["height"] = 300.0 
                                          : services[services.keys.toList()[index]]["height"] = 100.0;
                                        });
                                      },
                                    )
                                  ],
                                )
                              ),
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.all(20.0),
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                                    elevation: 8.0,
                                    child: Container(
                                      height: 300.0,
                                      width: 700.0,
                                      child: Center(
                                        child: SingleChildScrollView(
                                          child: Text(
                                            services[services.keys.toList()[index]]["details"],
                                            style: GoogleFonts.comfortaa(fontSize: 18.0),
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    )
                  ),
                )
                  )
            ],
          ),
        ),
      )
    );
  }
}