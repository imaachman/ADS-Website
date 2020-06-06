import 'package:ads_website/components.dart';
import 'package:ads_website/contactForm.dart';
import 'package:ads_website/formController.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobNoController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      ContactForm contactForm = ContactForm(
        nameController.text,
        emailController.text,
        mobNoController.text,
        messageController.text
      );

      FormController formController = FormController(
        (String response) {
          print(response);
          if (response == FormController.STATUS_SUCCESS) {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Form submitted!"), backgroundColor: Colors.red[400],));
          }else{
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Could not submit form :("), backgroundColor: Colors.red[400],));
          }
        }
      );

      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Submitting form..."), backgroundColor: Colors.red[400],));
      formController.submitForm(contactForm);
    }
  }
  

  InputDecoration inputDecor() {
    return InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.grey[200], width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.blue[400], width: 4.0)
                      )
                    );
  }

  Widget formField(String type, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: TextFormField(
                      decoration: inputDecor().copyWith(hintText: type),
                      validator: (val) => val.isEmpty ? "Enter your " + type : null,
                      controller: controller,
                    ),
    );
  }

  _launchURL(String _url) async {
  if (await canLaunch(_url)) {
    await launch(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 2000.0,
          //height: 900.0,
          padding: EdgeInsets.all(50.0),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                width: 900.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact",
                      style: GoogleFonts.comfortaa(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.grey[900]),
                    ),
                    Container(width: 120.0, height: 1.0, color: Colors.grey[900]),
                    SizedBox(height: 50.0,),
                    Text(
                      "Get in touch!",
                      style: GoogleFonts.comfortaa(fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      "Email : ads.taxsolutions@gmail.com",
                      style: GoogleFonts.comfortaa(fontSize: 24.0),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      "Ph. No. : +91 78888 21028",
                      style: GoogleFonts.comfortaa(fontSize: 24.0),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      "Address : Gurudwara Akali Daftar Road, Near Post Office, Kharar, S.A.S. Nagar, Punjab",
                      style: GoogleFonts.comfortaa(fontSize: 24.0),
                    ),
                    SizedBox(height: 30.0,),
                    Container(
                      height: 30.0,
                      width: 800.0,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => _launchURL("https://www.facebook.com/ADS-Accounting-and-Tax-Solutions-103503151373792/?modal=admin_todo_tour"),
                            child: Container(
                              width: 30.0,
                              child: Image(image: NetworkImage("https://image.flaticon.com/icons/svg/1384/1384005.svg"),)
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          InkWell(
                            onTap: () => _launchURL("_url"),
                            child: Container(
                              width: 30.0,
                              child: Image(image: NetworkImage("https://image.flaticon.com/icons/svg/1384/1384017.svg"),)
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          InkWell(
                            onTap: () => _launchURL("https://www.instagram.com/adstaxsolutions/"),
                            child: Container(
                              width: 30.0,
                              child: Image(image: NetworkImage("https://image.flaticon.com/icons/svg/733/733614.svg"),)
                            ),
                          ),SizedBox(width: 20.0,),
                          InkWell(
                            onTap: () => _launchURL("https://www.linkedin.com/company/43254422/"),
                            child: Container(
                              width: 30.0,
                              child: Image(image: NetworkImage("https://image.flaticon.com/icons/svg/1384/1384014.svg"),)
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
              Container(
                //padding: EdgeInsets.all(50.0),
                width: 600.0,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 200.0,),
                      formField("Name", nameController),
                      formField("Email ID", emailController),
                      formField("Mobile no.", mobNoController),
                      formField("Message", messageController),
                      SizedBox(height: 50.0,),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        hoverColor: Colors.blue[300],
                        hoverElevation: 0.0,
                        elevation: 0.0,
                        color: Colors.blue[100],
                        child: Text("Request a Callback!", style: GoogleFonts.raleway(fontSize: 16.0, fontWeight: FontWeight.bold),),
                        onPressed: () {
                          _submitForm();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}