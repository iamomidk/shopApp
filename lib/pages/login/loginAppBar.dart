import 'package:flutter/material.dart';
import 'package:store_app/pages/login/loginBody.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/colorsCalss.dart';

class Login extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _appBar(context),
      body: LoginBody(),
    );
  }
}

///////////////////////////////////////////////  app bar for login page

PreferredSize _appBar(context) {
  return PreferredSize(
    child: Padding(
      // size of the space from top and left

      padding: const EdgeInsets.only(top: 50.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          // free space between object

          SizedBox(
            height: 55.0,
          ),

          //  text of login page

          Text(
            Strings.login,
            style: TextStyle(
              fontSize: 34,
              color: Theme.of(context).textSelectionColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),

    // size of app bar
    preferredSize: Size.fromHeight(150.0),
  );
}
