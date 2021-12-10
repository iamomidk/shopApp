import 'dart:io';

import 'package:flutter/material.dart';
import 'package:store_app/pages/bottomNavigationBar/bottomNavBar.dart';
import 'package:store_app/pages/forgotpass/forgotpassAppBar.dart';
import 'package:store_app/pages/signUp/signUpAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';
import 'package:page_transition/page_transition.dart';

class LoginBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

// body of login page

class _BodyState extends State<LoginBody> {
//  define private variable

  // color of underline textfiled in textfiled
  Color _underlineEmail = Colors.cyan;
  Color _underlinePassword = Colors.cyan;

  // boolean for currect data

  bool invalidEmail = false;
  bool invalidPass = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        //  space in text field in login page

        padding: const EdgeInsets.all(15.0),

        // object of body in login page

        child: Column(
          children: <Widget>[
            textfieldEmail(),
            textfieldPassword(),
            forgotpass(),
            button(),
            dontAccount(),
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for email

  textfieldEmail() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          //  color of background textfield

          color: Theme.of(context).primaryColorLight,

          //border radius of textfield

          borderRadius: borderRadius_5,
        ),
        child: TextField(
          textDirection: TextDirection.rtl,
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
          textAlign: TextAlign.right,

          decoration: InputDecoration(
            alignLabelWithHint: true,
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
      ),
    );
  }

  /////////////////////////////////////////////////////////////////  textfiled for password

  textfieldPassword() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
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
            errorText: invalidPass ? Strings.invalidPass : null,

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
      ),
    );
  }

  /////////////////////////////////////////////////////////   text for forgot pass

  forgotpass() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // free space from left
          SizedBox(),

          InkWell(
            //function of text ... navigate to another page
            onTap: () {
              navForgotPass();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // text
                Text(
                  Strings.forgotpass,
                  style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                  ),
                ),
                // free space
                SizedBox(
                  width: 10.0,
                ),

                // icon
                Image.asset(
                  "assets/images/arrow_right_alt.png",
                  width: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

////////////////////////////////////////////////      botton

  button() {
    return InkResponse(
      // function of button... navigate to main page
      onTap: () {
        navbottomNavBar();
      },
      child: Container(
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
            Strings.login,
            style: TextStyle(
              color: ColorsAppDark.text,
            ),
          ),
        ),
      ),
    );
  }

////////////////////////////////////////////////////////////////   text for navigate to sign up

  dontAccount() {
    return
        // free space from around
        Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
          // free space from side
          SizedBox(),
          Row(
            children: <Widget>[
              Text(
                Strings.dontAccount,
                // style text
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                ),
              ),
              InkResponse(
                // function of sign up text
                onTap: () {
                  navSignUp();
                },
                child: Padding(
                  // create free space around text
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: Text(
                    Strings.signUp,
                    // style sign up text
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(),
      ],
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

  // check password currect of not

  checkpass(String value) {
    if (value.length < 6) {
      _underlinePassword = Theme.of(context).errorColor;
      invalidPass = true;
    } else {
      _underlinePassword = Theme.of(context).primaryColor;
      invalidPass = false;
    }
  }

  // navigate to Forgot password page
  navForgotPass() {
    return Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        child: ForgotPass(),
      ),
    );
  }

  // navigate to Forgot password page
  navSignUp() {
    return Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        child: SignUp(),
      ),
    );
  }

  // navigate to bottom navigation bar page
  navbottomNavBar() {
    return Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        child: BottomNavBar(),
      ),
    );
  }
}
