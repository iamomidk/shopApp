import 'package:flutter/material.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class ForgotPassBody extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPassBody> {
//  define private variable

  // color of underline textfiled in textfiled

  Color _underlineEmail = Colors.cyan;

  // boolean for currect data

  bool invalidEmail = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        //  space in text field in login page

        padding: const EdgeInsets.all(15.0),

        // object of body in login page

        child: Column(
          children: <Widget>[
            forgotpassTxt(),
            textfieldEmail(),
            button(),
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for email

  textfieldEmail() {
    return Container(
      decoration: BoxDecoration(
        //  color of background textfield

        color: Theme.of(context).primaryColorLight,

        //border radius of textfield

        borderRadius: borderRadius_5,
      ),
      child: TextField(
        // keboard type for email
        keyboardType: TextInputType.emailAddress,
        // function of for currect data in text field
        onSubmitted: (value) {
          setState(() {});
          checkEmail(value);
        },

        // style of text in textfield

        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
        decoration: InputDecoration(
          // error message for invalid email
          errorText: invalidEmail ? Strings.invalidEmail : null,

          // color of underline in textfiled

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _underlineEmail),
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),

          // styel of labeltext in textfield

          labelStyle: TextStyle(
            color: Colors.cyan,
          ),
          labelText: Strings.email,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 10.0),
    );
  }

  /////////////////////////////////////////////////////////   text for forgot pass

  forgotpassTxt() {
    return Padding(
      // size of free space from around object
      padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
      child: Text(
        Strings.forgotpasstxt,
        style: TextStyle(
          // color of text
          color: Theme.of(context).textSelectionColor,
          // space between lines
          height: 1.5,
        ),
      ),
    );
  }

////////////////////////////////////////////////      botton

  button() {
    return Container(
      // size of button
      width: 360.0,
      // heght of button
      height: 48.0,
      // margin from around
      margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
      // style of button
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: borderRadius_30,
      ),
      // text of button
      child: Center(
        child: Text(
          Strings.send,
          style: TextStyle(color: ColorsAppDark.text,),
        ),
      ),
    );
  }

////////////////////////////////////////////////////            FUNCTIONS             /////////////////////////////////////////////////////////

  // check email currect of not

  checkEmail(String value) {
    if (value.length < 10 || !value.contains(".com")) {
      _underlineEmail = Theme.of(context).errorColor;
      invalidEmail = true;
    } else {
      invalidEmail = false;
      _underlineEmail = Theme.of(context).primaryColor;
    }
  }
}
