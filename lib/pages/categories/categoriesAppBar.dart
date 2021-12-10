

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/categories/categoriesbody.dart';
import 'package:store_app/pages/search/searchAppBar.dart';
import 'package:store_app/resource/Strings.dart';

class Categories extends StatelessWidget {
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: _appbar(context),
        body: CategoriesBody(),
      ),
    );
  }

  _appbar(context) {
    return PreferredSize(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 45.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // icon in top left side
            // _iconArrow(),
            _text(),
            _iconSearch(context),
          ],
        ),
      ),
      preferredSize: Size.fromHeight(55),
    );
  }

  _iconArrow() {
    return Icon(
      Icons.arrow_back_ios,
      // style of icon
      color: Theme.of(_context).textSelectionColor,
      size: 18,
    );
  }

  _text() {
    return Text(
      Strings.categories,
      style: TextStyle(
        color: Theme.of(_context).textSelectionColor,
        fontSize: 18,
      ),
    );
  }

  _iconSearch(context) {
    return InkResponse(
      onTap: () {
        _navSearch(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.search,
          // style of icon
          color: Theme.of(_context).textSelectionColor,
          size: 22,
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
