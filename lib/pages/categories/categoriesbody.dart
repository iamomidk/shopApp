import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/resultCategory/resultCategoryAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class CategoriesBody extends StatelessWidget {
// defines variables
static BuildContext _context ;
  // TextStyle _textStyle = TextStyle(
  //   color: Theme.of(_context).textSelectionColor,
  //   fontSize: 16,
  // );
  @override
  Widget build(BuildContext context) {
    _context = context;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // button on top
            _buttonOnTop(context),
            // text under button
            _txtChoosecategory(),
            // free space between objects
            SizedBox(
              height: 10,
            ),
            // text for categories sections

            _txtTop(),
// divider between categories sections
            _divider(),
            // shirts sections of categories
            _txtshirts(),
// divider between categories sections
            _divider(),
            // shirts sections of categories
            _txtcardigans(),
// divider between categories sections
            _divider(),
            // cardigans sections of categories
            _txtknitwear(),
// divider between categories sections
            _divider(),
            // knitwear sections of categories
            _txtblazers(),
// divider between categories sections
            _divider(),
            // blazers sections of categories
            _txtouterwear(),
// divider between categories sections
            _divider(),
            // outerwear sections of categories
            _txtpants(),
// divider between categories sections
            _divider(),
            // jeans sections of categories
            _txtshorts(),
// divider between categories sections
            _divider(),
            // skirts sections of categories
            _txtskirts(),
// divider between categories sections
            _divider(),
            // dresses sections of categories
            _txtdresses(),
          ],
        ),
      ),
    );
  }

  _buttonOnTop(context) {
    return InkWell(
      onTap: (){
        navResultCategory(_context,Strings.viewAll);
      },
          child: Container(
        // style of button
        decoration: BoxDecoration(
          // color of button
          color: Theme.of(context).buttonColor,
          // border radius of button
          borderRadius: borderRadius_30,
        ),
        // height of button
        height: 48,
        // width of button
        width: 500,
        // free space from around
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            Strings.viewall,
            // style of button
            style: TextStyle(
              // color af text on button
              color: ColorsAppDark.text,
            ),
          ),
        ),
      ),
    );
  }

  // text under button
  _txtChoosecategory() {
    return Text(
      Strings.chooseCategory,
      // style of text
      style: TextStyle(
        color: Theme.of(_context).cardColor,
      ),
    );
  }

  // tops section of categories
  _txtTop() {
    return InkWell(
      onTap: (){
        navResultCategory(_context,Strings.tops);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.tops,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtshirts() {
    return InkWell(
      onTap: (){
        navResultCategory(_context,Strings.shirts);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.shirts,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtcardigans() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.cardigans);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.cardigans,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtknitwear() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.knitwear);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.knitwear,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtblazers() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.blazers);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.blazers,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtouterwear() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.outerwear);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.outerwear,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtpants() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.pants);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.pants,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtjeans() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.jeans);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.jeans,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtshorts() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.shorts);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.shorts,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtskirts() {
    return InkWell(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.skirts);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.skirts,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

  // tops section of categories
  _txtdresses() {
    return InkResponse(
      // function of text
      onTap: (){
        navResultCategory(_context,Strings.dresses);
      },
          child: Row(
            children: <Widget>[
              Padding(
        // size of free space from around
        padding: const EdgeInsets.fromLTRB(18.0, 9, 0.0, 9),
        child: Text(
              Strings.dresses,
              // style of text
              style: TextStyle(
    color: Theme.of(_context).textSelectionColor,
    fontSize: 16,
  ),
        ),
      ),
            ],
          ),
    );
  }

// divider between categories sections
  _divider() {
    return Divider(
      color: Theme.of(_context).cardColor,
    );
  }

  ////////////////////////////////////////////     FUNCTIONS    //////////////////////////////////

  navResultCategory(_context,String title) {
    return Navigator.push(
      _context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        child: ResultCategory(title),
      ),
    );
  }
}
