class ContactForm {

  String _name;
  String _email;
  String _mobNo;
  String _message;

  ContactForm(this._name, this._email, this._mobNo, this._message);

  String toParam() => "?name=$_name&email=$_email&mobNo=$_mobNo&message=$_message";

}