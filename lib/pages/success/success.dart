import '../../resource/Strings.dart';
import '../../resource/colorsCalss.dart';
import 'package:flutter/material.dart';
import '../../resource/borderRadius.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floating button
      floatingActionButton: _floatingButton(context),
      // background color page
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // image in center page
            _image(),
            // text in bottom of the image
            _txtSuccess(context),
            // note in bottom of the text
            _txtSuccessNote(context),
          ],
        ),
      ),
    );
  }

  _image() {
    return Image.asset("assets/images/success.png");
  }

  _txtSuccess(context) {
    return Padding(
      // free space from top
      padding: const EdgeInsets.only(top:40.0),
      child: Text(
        Strings.success,
        // style of the text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 30,
        ),
      ),
    );
  }

  _txtSuccessNote(context) {
    return Padding(
      // free space from around
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Strings.successNote,
        // style of the text
        style: TextStyle(
          color: Theme.of(context).cardColor,
          fontSize: 14,
        ),
      ),
    );
  }
  
  // floating action button

  _floatingButton(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[

       
        InkResponse(
          // function of the button
          onTap: () {
          },
          child: Container(
            height: 45,
            alignment: Alignment.center,
            // style of container
            decoration: BoxDecoration(
              borderRadius: borderRadius_30,
              color: Theme.of(context).buttonColor,
            ),

            // free space from around
            margin: EdgeInsets.all(10),
            child: Text(
              Strings.saveAddress,
              style: TextStyle(
                color:ColorsAppDark.text,
              ),
            ),
          ),
        ),

        
        // free space from bottom
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
