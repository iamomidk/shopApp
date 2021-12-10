import 'package:flutter/material.dart';
import 'package:store_app/pages/signUp/signUpBody.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/colorsCalss.dart';

class SignUp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Directionality(
      
          textDirection: TextDirection.rtl,
          child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: _appBar(context),
        body: SignUpBody(),
      ),
    );
  }

//////////////////////////////////////////////////////////  app bar for sign up page

  PreferredSize _appBar(BuildContext context) {
    return PreferredSize(
      child: Padding(
        // size of the space from top and left

        padding: const EdgeInsets.only(top: 50.0, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Icon in sign up page
            InkResponse(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).textSelectionColor,
              ),
            ),

            // free space between object

            SizedBox(
              height: 50.0,
            ),

            //  text of sign up page

            Text(
              Strings.signUp,
              style: TextStyle(
                fontSize: 34,
                color: Theme.of(context).textSelectionColor,
              ),
            ),
          ],
        ),
      ),

      // size of app bar
      preferredSize: Size.fromHeight(150.0),
    );
  }
}
