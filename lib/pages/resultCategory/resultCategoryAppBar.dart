import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/filter/filterAppbar.dart';
import 'package:store_app/pages/resultCategory/resultCategoryBody.dart';
import 'package:store_app/pages/search/searchAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class ResultCategory extends StatefulWidget {
  // define variable
  String title;
  ResultCategory(this.title);

  @override
  _ResultCategoryState createState() => _ResultCategoryState();
}

class _ResultCategoryState extends State<ResultCategory> {
  // define my variable
  // color for animation
  Color _colorAnimation = ColorsAppDark.grey;

  // boolean for change sort of price
  bool _sort = false;

  BuildContext _context;

  // list of name of categories
  List _categories = [
    Strings.tshirts,
    Strings.knitwear,
    Strings.outerwear,
    Strings.shorts,
    Strings.pants,
    Strings.blazers
  ];
  int _indexCategories = -1;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
        // background color in result page
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        body: CustomScrollView(
          slivers: <Widget>[
            // appbar of single product page

            _appbar(context),

            // body of single product

            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return ResultCategoryBody(index);
              }, childCount: 10),
              // number of object
            )
          ],
        ),
      ),
    );
  }

  _icon(context) {
    return InkResponse(
      onTap: () {
        // navigation back to lastest page
        // navigate to home page
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Theme.of(context).textSelectionColor,
      ),
    );
  }

  _appbar(context) {
    return SliverAppBar(
      // icon in top left
      leading: _icon(context),
      // backgroun of appbar
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // style of app bar
      pinned: true,
      floating: true,
      snap: true,
      // object in app bart
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(),
          // icon in top right... share icon
          _searchIcon(context),
        ],
      ),
      // size of app bar
      expandedHeight: 200,
      // obtional filter for product
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _txtHedder(context),
                _builder(),
                _filter(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _txtHedder(context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        widget.title,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 30,
        ),
      ),
    );
  }

  _builder() {
    return Container(
      height: 50.0,
      width: 360,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return _itembuilder(_categories[index], index);
        },
      ),
    );
  }

  _itembuilder(String str, int index) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkResponse(
        
        // function of container
        onTap: () {
          setState(() {
            _indexCategories = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          // style of container
          decoration: BoxDecoration(
            borderRadius: borderRadius_30,
            color:
                _indexCategories == index?
                Theme.of(context).buttonColor: Theme.of(context).cardColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              str,
              // style of text
              style: TextStyle(
                color: _indexCategories == index
                    ? Theme.of(context).textSelectionColor
                    : Theme.of(_context).scaffoldBackgroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _filter(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        // filters section
        InkWell(
          onTap: () {
            _navFilter(context);
          },
          child: Row(
            children: <Widget>[
              // icon for filters sections
              Icon(
                Icons.filter_list,
                // color of icon
                color: Theme.of(context).cardColor,
              ),
              // free space between object
              SizedBox(
                width: 5,
              ),
              // text for filters sections
              Text(
                Strings.filters,
                // style of text
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                ),
              ),
            ],
          ),
        ),
        // price filter section
        InkWell(
          // function to change sort price
          onTap: () {
            setState(() {
              _sort = !_sort;
            });
          },
          child: Row(
            children: <Widget>[
              // icon for price filter sections
              Icon(
                Icons.swap_vert,
                // color of icon
                color: Theme.of(context).cardColor,
              ),
              // text for price filter sections
              Text(
                _sort ? Strings.priceUp : Strings.priceDown,
                // style of text
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _searchIcon(context) {
    return InkResponse(
      // function of share icon
      onTap: () {
        _navSearch(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.search,
          // size of icon
          size: 30,
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

  _navFilter(context) {
    return Navigator.push(
      context,
      PageTransition(child: FilterAppbar(), type: PageTransitionType.rotate),
    );
  }

  _navSearch(context) {
    return Navigator.push(
      context,
      PageTransition(
          child: SearchAppBar(), type: PageTransitionType.rightToLeft),
    );
  }
}
