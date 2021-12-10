import 'package:flutter/material.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
//  define private variable

  // color of underline textfiled in textfiled

  Color _underlineEmail = Colors.cyan;
  Color _underlinePassword = Colors.cyan;
  Color _underlineName = Colors.cyan;

  // boolean for currect data

  bool _invalidEmail = false;
  bool _invalidPass = false;
  bool _invalidName = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        //  space in text field in Sign up page

        padding: const EdgeInsets.all(15.0),

        // object of body in sign Up page

        child: Column(
          children: <Widget>[
            textfieldName(),
            textfieldEmail(),
            textfieldPassword(),
            button(),
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for name

  textfieldName() {
    return Container(
      decoration: BoxDecoration(
        //  color of background textfield

        color: Theme.of(context).primaryColorLight,

        //border radius of textfield

        borderRadius: borderRadius_5,
      ),
      child: TextField(
        // function of for currect data in text field
        onSubmitted: (value) {
          setState(() {});
          checkName(value);
        },

        // style of text in textfield

        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
        decoration: InputDecoration(
          // error message for weak password
          errorText: _invalidName ? Strings.invalidName : null,
          // color of underline in textfiled

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _underlineName),
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),

          // styel of labeltext in textfield

          labelStyle: TextStyle(
            color: Colors.cyan,
          ),
          labelText: Strings.name,
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
          errorText: _invalidEmail ? Strings.invalidEmail : null,

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

  /////////////////////////////////////////////////////////////////  textfiled for password

  textfieldPassword() {
    return Container(
      decoration: BoxDecoration(
          //  color of background textfield

          color: Theme.of(context).primaryColorLight,

          //border radius of textfield

          borderRadius: borderRadius_5),
      child: TextField(
        // type of text field
        obscureText: true,
        // function of for currect data in text field
        onSubmitted: (value) {
          setState(() {});
          checkpass(value);
        },

        // style of text in textfield

        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
        decoration: InputDecoration(
          // error message for weak password
          errorText: _invalidPass ? Strings.invalidPass : null,

          // color of underline in textfiled

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _underlinePassword),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),

          // styel of labeltext in textfield

          labelStyle: TextStyle(
            color: Colors.cyan,
          ),
          labelText: Strings.password,
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
          Strings.signUp,
          style: TextStyle(color: ColorsAppDark.text,),
        ),
      ),
    );
  }

////////////////////////////////////////////////            FUNCTIONS             /////////////////////////////////////////////////////////

  // check name currect of not

  checkName(String value) {
    if (value.length < 3) {
      _underlineName = Theme.of(context).errorColor;
      _invalidName = true;
    } else {
      _underlineName = Theme.of(context).primaryColor;
      _invalidName = false;
    }
  }
  // check email currect of not

  checkEmail(String value) {
    if (value.length < 10 || !value.contains(".com")) {
      _underlineEmail = Theme.of(context).errorColor;
      _invalidEmail = true;
    } else {
      _invalidEmail = false;
      _underlineEmail = Theme.of(context).primaryColor;
    }
  }

  // check password currect of not

  checkpass(String value) {
    if (value.length < 6) {
      _underlinePassword = Theme.of(context).errorColor;
      _invalidPass = true;
    } else {
      _underlinePassword = Theme.of(context).primaryColor;
      _invalidPass = false;
    }
  }

  // // navigate to Forgot password page
  // navSignUp() {
  //   return Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => SignUp(),
  //     ),
  //   );
  // }

}
