import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/main.dart';
import 'package:store_app/pages/myOrder/myOrderAppbar.dart';
import 'package:store_app/pages/reviews/reviewsAppBar.dart';
import 'package:store_app/pages/setting/settingAppbar.dart';
import 'package:store_app/pages/shoppingAddress/shoppingAdressAppbar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/colorsCalss.dart';

class ProfileBody extends StatelessWidget {
// define variable

// static BuildContext context ;
  // style of title
  // TextStyle _titleStyle = TextStyle(
  //   color: Theme.of(context).textSelectionColor,
  //   fontSize: 15,
  // );

  // style of sub title

  TextStyle _subtitleStyle = TextStyle(
    color: ColorsAppDark.grey,
    fontSize: 9,
  );

  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;

    return Padding(
      // free space from around
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(

          children: <Widget>[
            // my orders section in profile page
            _myorders(context),
            // divider between objects
            _divider(),
            // shipping methods section in profile page
            _shipping(context),
            // divider between objects
            _divider(),

            // setting section in profile page
            _setting(context),
            // // divider between objects
            // _divider(),
            // // payment methods section in profile page
            // _payment(context),
            // // divider between objects
            // _divider(),
            // // promocodes section in profile page
            // _promocodes(context),
            // divider between objects
            _divider(),
            // my reviews section in profile page
            _myreviews(context),
            // free space from bottom
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  //////////////////////////////////////////////////////// my orders section

  _myorders(context) {
    return InkResponse(
      onTap: () {
        _navOrder(context);
      },
      child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
          // space between abjects
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // textDirection: TextDirection.rtl,
          
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text of title
                Text(
                  Strings.myorder,
                  // style of text
                  style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15,
                  ),
                ),
                // free space between objects
                _sizedbox(),
                // text of sub title
                Text(
                  Strings.subMyorder,
                  // style of text
                  style: _subtitleStyle,
                ),
              ],
            ),
            // icon in left side
            _icon(),
          ],
        ),
      ),
    );
  }

  //////////////////////////////////////////////////////// Shipping addresses section

  _shipping(context) {
    return InkResponse(
      onTap: () {
        _navShipping(context);
      },
      child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
          // space between abjects
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text of title
                Text(
                  Strings.shoppingAdresses,
                  // style of text
                  style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15,
                  ),
                ),
                // free space between objects
                _sizedbox(),
                // text of sub title
                Text(
                  Strings.subShopping,
                  // style of text
                  style: _subtitleStyle,
                ),
              ],
            ),
            // icon in left side
            _icon(),
          ],
        ),
      ),
    );
  }

  //////////////////////////////////////////////////////// payment methods section

  _payment(context) {
    return InkResponse(
      onTap: () {
        _navSetting(context);
      },
      child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
          // space between abjects
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text of title
                Text(
                  Strings.paymentmethods,
                  // style of text
                  style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15,
                  ),
                ),
                // free space between objects
                _sizedbox(),
                // text of sub title
                Text(
                  Strings.subPayment,
                  // style of text
                  style: _subtitleStyle,
                ),
              ],
            ),
            // icon in left side
            _icon(),
          ],
        ),
      ),
    );
  }

  //////////////////////////////////////////////////////// Promocodes section

  _promocodes(context) {
    return InkResponse(
      onTap: () {
        _navSetting(context);
      },
      child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
          // space between abjects
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text of title
                Text(
                  Strings.promocodes,
                  // style of text
                  style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15,
                  ),
                ),
                // free space between objects
                _sizedbox(),
                // text of sub title
                Text(
                  Strings.subPromocodes,
                  // style of text
                  style: _subtitleStyle,
                ),
              ],
            ),
            // icon in left side
            _icon(),
          ],
        ),
      ),
    );
  }

  //////////////////////////////////////////////////////// my reviews section

  _myreviews(context) {
    return InkResponse(
      onTap: () {
        _navReviews(context);
      },
      child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
          // space between abjects
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text of title
                Text(
                  Strings.myreviews,
                  // style of text
                  style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15,
                  ),
                ),
                // free space between objects
                _sizedbox(),
                // text of sub title
                Text(
                  Strings.subReviews,
                  // style of text
                  style: _subtitleStyle,
                ),
              ],
            ),
            // icon in left side
            _icon(),
          ],
        ),
      ),
    );
  }

  //////////////////////////////////////////////////////// setting section

  _setting(context) {
    return InkResponse(
      onTap: () {
        _navSetting(context);
      },
      child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
          // space between abjects
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text of title
                Text(
                  Strings.settings,
                  // style of text
                  style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15,
                  ),
                ),
                // free space between objects
                _sizedbox(),
                // text of sub title
                Text(
                  Strings.subSetting,
                  // style of text
                  style: _subtitleStyle,
                ),
              ],
            ),
            // icon in left side
            _icon(),
          ],
        ),
      ),
    );
  }

  // free space
  _sizedbox() {
    return SizedBox(
      height: 5,
    );
  }

  // icon in left side
  _icon() {
    return Icon(
      Icons.arrow_forward_ios,
      // color of icon
      color: Theme.of(_context).cardColor,
      // size of icon
      size: 14,
    );
  }

  // divider between objects
  _divider() {
    return Divider(
      // color of divider
      color: Theme.of(_context).cardColor,
      // free space in divider
      height: 40,
    );
  }

  ///////////////////////////////////////        FUNCTIONS        ///////////////////////////////

  // function for navigate to setting page
  _navSetting(context) {
    Navigator.push(
      context,
      PageTransition(
        child: SettingAppbar(),
        // type of page transition for navigate
        type: PageTransitionType.rightToLeft,
      ),
    );
  }

  // function for navigate to my order page
  _navOrder(context) {
    Navigator.push(
      context,
      PageTransition(
        child: MyOrderAppBar(),
        // type of page transition for navigate
        type: PageTransitionType.rightToLeft,
      ),
    );
  }

  // function for navigate to Shipping address page
  _navShipping(context) {
    Navigator.push(
      context,
      PageTransition(
        child: ShippingAdressAppbar(),
        // type of page transition for navigate
        type: PageTransitionType.rightToLeft,
      ),
    );
  }

  // function for navigate to Reviews  page
  _navReviews(context) {
    Navigator.push(
      context,
      PageTransition(
        child: ReviewsAppBar(),
        // type of page transition for navigate
        type: PageTransitionType.rightToLeft,
      ),
    );
  }
}
