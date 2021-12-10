import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/myBag/myBagBody.dart';
import 'package:store_app/pages/search/searchAppBar.dart';
import 'package:store_app/pages/shoppingAddress/shoppingAdressAppbar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

// items in my bag section
List mybagItems = new List();
List quantityItem = new List();

class MyBag extends StatefulWidget {
  @override
  _MyBagState createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  reload() {
    return setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // if at lease there is a product in list or not
        // if at lease there is a product => show _floatingButton
        // if there is any product => show empty container
        floatingActionButton:
            mybagItems.length == 0 ? Container() : _floatingButton(),
        // color of background
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: CustomScrollView(
          slivers: <Widget>[
            // app bar for mybag page

            _appbar(),
            // body of my bag page
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return mybagItems.length == 0
                      ? Padding(
                          // free space from around
                          padding: EdgeInsets.only(top: 100),
                          child: Center(
                            child: Text(
                              Strings.notProduct,
                              // style of text
                              style: TextStyle(
                                color: Theme.of(context).buttonColor,
                              ),
                            ),
                          ),
                        )
                      : MyBagBody(index, reload);
                },

                // number of items builder
                childCount: mybagItems.length == 0 ? 1 : mybagItems.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _appbar() {
    return SliverAppBar(
      // color of background appbar
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // style of appbar
      floating: true,
      snap: true,
      pinned: true,
      leading: Container(),
      // size of appbar
      expandedHeight: 150,
      title: Column(
        children: <Widget>[
          // icon search in top right of appbar
          _searchIcon(),
        ],
      ),
      // hedder text in bottom left
      flexibleSpace: _txtHedder(),
    );
  }

  _searchIcon() {
    return Align(
      alignment: Alignment.topRight,
      child: 
        InkResponse(
          onTap: (){
            _navSearch(context);
          },
              child: Padding(
          // free space from around
          padding: const EdgeInsets.only(left: 8.0, top: 15),
          child: Icon(
            Icons.search,
            // color of search icon
            color: Theme.of(context).textSelectionColor,
          ),
        ),
      ),
    );
  }

  _txtHedder() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,bottom: 12),
        child: Text(
          Strings.mybag,
          // style of text
          style: TextStyle(
            color: Theme.of(context).textSelectionColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  // floating action button

  _floatingButton() {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _totalprice(),
          // button in floating action button
          _button(),

          /// free space from bottom
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  // button
  _button() {
    return InkResponse(
      // function for navigate to shipping page
      onTap: () {
        _navShipping();
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
          Strings.checkout,
          style: TextStyle(
            color: ColorsAppDark.text,
          ),
        ),
      ),
    );
  }

  // total price for all items
  _totalprice() {
    return Padding(
      // free space from around
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            Strings.totalAmount,
            style: TextStyle(
              // color of text
              color: Theme.of(context).cardColor,
            ),
          ),
          Text(
            _totalPrice(mybagItems) ,
            style: TextStyle(
              // color of text
              color: Theme.of(context).textSelectionColor,
            ),
          ),
        ],
      ),
    );
  }

  // calculate all price
  _totalPrice(List items) {
    double _price = 0;

    for (var i = 0; i < items.length; i++) {
      _price += quantityItem[i] * items[i]['price'];
      reload();
    }
    return _price.toStringAsFixed(0);
  }

  // navigate to shipping page
  _navShipping() {
    return Navigator.push(
      context,
      PageTransition(
        duration: Duration(milliseconds: 500),
        type: PageTransitionType.downToUp,
        child: ShippingAdressAppbar(),
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
