import 'package:ads_website/aboutPage.dart';
import 'package:ads_website/contactPage.dart';
import 'package:ads_website/homePage.dart';
import 'package:ads_website/servicesPage.dart';
import 'package:ads_website/teamPage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
          //BouncingScrollWrapper.builder(context, widget),
          //maxWidth: 1200,
          //minWidth: 450,
          defaultScale: true,
          breakpoints: [
            //ResponsiveBreakpoint.resize(375, name: "iPhone", ),
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      //home: Home(),
      initialRoute: "/",
      routes: {
        "/" : (context) => HomePage(),
        "/about" : (context) => AboutPage(),
        "/services" : (context) => ServicesPage(),
        "/team" : (context) => TeamPage(),
        "/contact" : (context) => ContactPage()
      },
    );
  }
}