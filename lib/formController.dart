import 'package:ads_website/contactForm.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class FormController {

  final void Function(String) callback;

  static const String URL = "https://script.google.com/macros/s/AKfycbyXaov5ftASKbmgP8szKlyHWIjsEaPNUxaLdDPJVk4kBIu4NJc/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  FormController(this.callback);

  void submitForm(ContactForm contactForm) async {

    try{
      await http.get(
        URL + contactForm.toParam()
      ).then((response) {
        callback(convert.jsonDecode(response.body)["status"]);
      });
    }catch(e){

    }

  }

}