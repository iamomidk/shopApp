import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/main.dart';
import 'package:store_app/pages/changeTheme/changeTheme.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class SettingBody extends StatefulWidget {
  @override
  _SettingBodyState createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  // define my variable

  // boolean fro check box in notification section
  bool _sale = false;
  bool _newArrivals = true;
  bool _delivery = false;
  bool _dark = true;
  ThemeChanger _themeChanger;
  @override
  Widget build(BuildContext context) {
    _themeChanger = Provider.of(context);
    return  Directionality(
              textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // hedder text in bottom of appbar
              _txtHedder(),
              // free space between object
              SizedBox(
                height: 10,
              ),

              // not text in bottom of hedder text
              _txtNote(),
              // text field for full name ... bottom of the note text
              _textfieldFullName(),
              // text field for date of birth ... bottom of the full name text field
              _textfieldDate(),
              // free space from top
              SizedBox(
                height: 60,
              ),
              // password section

              _password(),
              // textfield for change password
              _containerPassword(),
              // notification section
              // free space from top
              SizedBox(
                height: 60,
              ),

              // dark mood section
              _txtDarkMood(),
              _txtdarkMood(),
              // text for hedder notification section

              _txtNotification(),
              // sales text
              _txtSales(),
              _txtNewArrivale(),
              _txtDelivery(),
            ],
          ),
        ),
      ),
    );
  }

  // hedder text in bottom of appbar
  _txtHedder() {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Text(
        Strings.settings,
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 30,
        ),
      ),
    );
  }

  // not text in bottom of hedder text
  _txtNote() {
    return Text(
      Strings.personal,
      style: TextStyle(
        color: Theme.of(context).textSelectionColor,
        fontSize: 17,
      ),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for full name

  _textfieldFullName() {
    return Container(
      decoration: BoxDecoration(
        //  color of background textfield

        color: Theme.of(context).primaryColorLight,

        //border radius of textfield

        borderRadius: borderRadius_5,
      ),
      child: TextField(
        // style of text in textfield

        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
        decoration: InputDecoration(
          // color of underline in textfiled

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),

          // styel of labeltext in textfield

          labelStyle: TextStyle(
            color: Colors.cyan,
          ),
          labelText: Strings.fullname,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 15.0),
    );
  }
  ///////////////////////////////////////////////////////////////  textfiled for date of birth

  _textfieldDate() {
    return Container(
      decoration: BoxDecoration(
        //  color of background textfield

        color: Theme.of(context).primaryColorLight,

        //border radius of textfield

        borderRadius: borderRadius_5,
      ),
      child: TextField(
        // style of text in textfield
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
        decoration: InputDecoration(
          // color of underline in textfiled

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),

          // styel of labeltext in textfield

          labelStyle: TextStyle(
            color: Colors.cyan,
          ),
          labelText: Strings.date,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 15.0),
    );
  }

  // password section in bottom of textfield
  _password() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          Strings.password,
          style: TextStyle(
            color: Theme.of(context).textSelectionColor,
            fontSize: 17,
          ),
        ),
        Text(
          Strings.change,
          style: TextStyle(
            color: Theme.of(context).cardColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  ///////////////////////////////////////////////////////////////  container for date password

  _containerPassword() {
    return InkResponse(
      onTap: () {
        _bottomSheet(context);
      },
      child: Container(
        alignment: Alignment.centerRight,
        // size of container
        width: 400,
        height: 60,
        decoration: BoxDecoration(
          //  color of background textfield

          color: Theme.of(context).primaryColorLight,

          //border radius of textfield

          borderRadius: borderRadius_5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Strings.password,
              style: TextStyle(color: Colors.cyan),
            )
          ],
        ),

        // the size of the space textfiled from left and right

        padding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),

        // the size of the space from top

        margin: EdgeInsets.only(top: 15.0),
      ),
    );
  }

  // hedder text for notification section
  _txtNotification() {
    return Text(
      Strings.notification,
      style: TextStyle(
        color: Theme.of(context).textSelectionColor,
        fontSize: 17,
      ),
    );
  }

  // hedder text for dark mood section
  _txtDarkMood() {
    return Text(
      Strings.darkMood,
      style: TextStyle(
        color: Theme.of(context).textSelectionColor,
        fontSize: 17,
      ),
    );
  }

  // sales section in bottom of the hedder notification section
  _txtSales() {
    return Padding(
      // free space from top and bottom
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // text in right
          Text(
            Strings.sales,
            // style of text
            style: TextStyle(
              color: Theme.of(context).cardColor,
              fontSize: 14,
            ),
          ),
          // check box section
          InkResponse(
            onTap: () {
              setState(() {});
              _sale = !_sale;
            },
            child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // shape of check box
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).cardColor)),
                width: 20,
                height: 20,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _sale
                        ? Theme.of(context).buttonColor
                        : Theme.of(context).primaryColorLight,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  // dark mood section
  _txtdarkMood() {
    return Padding(
      // free space from top and bottom
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // text in right
          Text(
            Strings.dark,
            // style of text
            style: TextStyle(
              color: Theme.of(context).cardColor,
              fontSize: 14,
            ),
          ),
          // check box section
          InkResponse(
            onTap: () {
              setState(() {});
              _dark = !_dark;

              _themeChanger.setTheme(_dark);
            },
            child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // shape of check box
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).cardColor)),
                width: 20,
                height: 20,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _dark
                        ? Theme.of(context).buttonColor
                        : Theme.of(context).primaryColorLight,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  // new arrivals section in bottom of the sale section
  _txtNewArrivale() {
    return Padding(
      // free space from top and bottom
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // text in right
          Text(
            Strings.newArrivale,
            // style of text
            style: TextStyle(
              color: Theme.of(context).cardColor,
              fontSize: 14,
            ),
          ),
          // check box section
          InkResponse(
            onTap: () {
              setState(() {});
              _newArrivals = !_newArrivals;
            },
            child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // shape of check box
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).cardColor)),
                width: 20,
                height: 20,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _newArrivals
                        ? Theme.of(context).buttonColor
                        : Theme.of(context).primaryColorLight,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  // delivery section in bottom of the new arrivales section
  _txtDelivery() {
    return Padding(
      // free space from top and bottom
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // text in right
          Text(
            Strings.delivery,
            // style of text
            style: TextStyle(
              color: Theme.of(context).cardColor,
              fontSize: 14,
            ),
          ),
          // check box section
          InkResponse(
            onTap: () {
              setState(() {});
              _delivery = !_delivery;
            },
            child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // shape of check box
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).cardColor)),
                width: 20,
                height: 20,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // change color for check box
                    color: _delivery
                        ? Theme.of(context).buttonColor
                        : Theme.of(context).primaryColorLight,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  // bottom sheet for change password

  _bottomSheet(context) {
    return showModalBottomSheet(
      // border radius for bottm sheet
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(39.0),
      ),

      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            // size of bottom sheet
            height: 350,
            // style of bottom sheet
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              // border radius for container
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                topRight: Radius.circular(34),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  // free space from top
                  SizedBox(
                    height: 10,
                  ),
                  // empty container
                  _designContainer(),
                  // hedder text
                  _txtHedderBottomsheet(),
                  // text field for old password section
                  _textfieldOldPass(),
                  // text for forgot password section
                  _txtForgotPass(),
                  // text field for new password section
                  _textfieldNewPass(),
                  // button for save change
                  _floatingButton(),
                  // Text("data")
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// free container

  _designContainer() {
    return Container(
      margin: EdgeInsets.all(10),
      // size of container
      width: 60,
      height: 6,
      // style of container
      decoration: BoxDecoration(
          // color of container
          color: Theme.of(context).cardColor,
          // border radius for container
          borderRadius: borderRadius_30),
    );
  }

  /// text of heder for password section
  _txtHedderBottomsheet() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Strings.passwordChange,
        style: TextStyle(
          // color of text
          color: Theme.of(context).textSelectionColor,
          fontSize: 17,
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for date of birth

  _textfieldOldPass() {
    return Container(
      decoration: BoxDecoration(
        //  color of background textfield

        color: Theme.of(context).primaryColorLight,

        //border radius of textfield

        borderRadius: borderRadius_5,
      ),
      child: TextField(
        // style of text in textfield

        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
        decoration: InputDecoration(
          // color of underline in textfiled

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),

          // styel of labeltext in textfield

          labelStyle: TextStyle(
            color: Colors.cyan,
          ),
          labelText: Strings.oldPass,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 15.0),
    );
  }
  ///////////////////////////////////////////////////////////////  textfiled for date of birth

  _textfieldNewPass() {
    return Container(
      decoration: BoxDecoration(
        //  color of background textfield

        color: Theme.of(context).primaryColorLight,

        //border radius of textfield

        borderRadius: borderRadius_5,
      ),
      child: TextField(
        // style of text in textfield

        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
        decoration: InputDecoration(
          // color of underline in textfiled

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),

          // styel of labeltext in textfield

          labelStyle: TextStyle(
            color: Colors.cyan,
          ),
          labelText: Strings.newPass,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 15.0),
    );
  }

  // forgot password text
  _txtForgotPass() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          Strings.forgotpass,
          style: TextStyle(
            color: Theme.of(context).cardColor,
          ),
        ),
      ),
    );
  }

  // button for save password

  _floatingButton() {
    return Container(
      height: 45,
      width: 400,
      alignment: Alignment.center,
      // style of container
      decoration: BoxDecoration(
        borderRadius: borderRadius_30,
        color: Theme.of(context).buttonColor,
      ),

      // free space from around
      margin: EdgeInsets.all(10),
      child: Text(
        Strings.addToCart,
        style: TextStyle(
          color: ColorsAppDark.text
        ),
      ),
    );
  }
}
