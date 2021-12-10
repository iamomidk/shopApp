import 'package:flutter/material.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class ShippingAdressBody extends StatefulWidget {
  @override
  _ShippingAddressBodyState createState() => _ShippingAddressBodyState();
}

class _ShippingAddressBodyState extends State<ShippingAdressBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        //  space in text field in login page

        padding: const EdgeInsets.all(15.0),

        // object of body in login page

        child: Column(
          children: <Widget>[
            textfieldFullName(),
            textfieldAddress(),
            textfieldCity(),
            textfieldState(),
            textfieldZipCode(),
            textfieldCountry(),
            // free space for bottom
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for full name

  textfieldFullName() {
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

  ///////////////////////////////////////////////////////////////  textfiled for address

  textfieldAddress() {
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
          labelText: Strings.address,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 18.0),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for city

  textfieldCity() {
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
          labelText: Strings.city,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 18.0),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for state

  textfieldState() {
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
          labelText: Strings.state,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 18.0),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for zip code

  textfieldZipCode() {
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
          labelText: Strings.zipcode,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 18.0),
    );
  }

  ///////////////////////////////////////////////////////////////  textfiled for country

  textfieldCountry() {
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
          labelText: Strings.country,
        ),
      ),

      // the size of the space textfiled from left and right

      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),

      // the size of the space from top

      margin: EdgeInsets.only(top: 18.0),
    );
  }
}
