import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/profile/profileBody.dart';
import 'package:store_app/pages/search/searchAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/colorsCalss.dart';
import 'package:store_app/resource/fakeImage.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color of background
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _appbar(context),
      body: ProfileBody(),
    );
  }

////////////////////////////////// appbar
  _appbar(context) {
    return PreferredSize(
      // items in appbar
      child: Container(
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // search icon at top right
            _searchIcon(context),
            // text on hedder page
            _hedderTxt(context),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                _avatar(),
                Column(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _txtName(context),
                    _txtEmail(context),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // size of appbar
      preferredSize: Size.fromHeight(190),
    );
  }

  // icon in app bar
  _searchIcon(context) {
    return Align(
      // align for search icon
      alignment: Alignment.topRight,
      child: InkResponse(
        onTap: () {
          _navSearch(context);
        },
        child: Padding(
          // free space from around
          padding: const EdgeInsets.only(
            right: 18.0,
            top: 50,
          ),
          child: Icon(
            Icons.search,
            // color of icon
            color: Theme.of(context).textSelectionColor,
          ),
        ),
      ),
    );
  }

  // text on hedder page
  _hedderTxt(context) {
    return Padding(
      // free space from around
      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 20),
      child: Align(
        alignment: Alignment.topRight,
              child: Text(
          Strings.myProfile,
          style: TextStyle(
            color: Theme.of(context).textSelectionColor,
            fontSize: 35.0,
          ),
        ),
      ),
    );
  }

  // avatar for profile page
  _avatar() {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          child: Image.asset(
            FakeImage.white,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          )),
    );
  }

  // text name fron avatar
  _txtName(context) {
    return Padding(
      // free space from around
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Strings.omidKzm,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 15,
        ),
      ),
    );
  }

  // text name fron avatar
  _txtEmail(context) {
    return Padding(
      // free space from left
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        Strings.emailprofile,
        // style of text
        style: TextStyle(
          color: Theme.of(context).cardColor,
          fontSize: 12,
        ),
      ),
    );
  }

  _navSearch(context) {
    return Navigator.push(
      context,
      PageTransition(
        child: SearchAppBar(),
        type: PageTransitionType.rightToLeftWithFade,
      ),
    );
  }
}
