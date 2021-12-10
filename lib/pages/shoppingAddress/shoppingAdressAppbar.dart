import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/shoppingAddress/shippingAdressBody.dart';
import 'package:store_app/pages/success/success.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class ShippingAdressAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
              textDirection: TextDirection.rtl,
          child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floating button on bottom page
        floatingActionButton: _floatingButton(context),
        // background color
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // app bar ... hedder of page
        appBar: _appbar(context),
        body: ShippingAdressBody(),
      ),
    );
  }

  // app bar
  _appbar(context) {
    return AppBar(
      leading: _leading(context),
      // background color
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      title: Text(
        Strings.addShipping,
        // style of title
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

  _leading(context) {
    return InkResponse(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios,color: Theme.of(context).textSelectionColor,),
    );
  }

  // floating action button

  _floatingButton(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        InkResponse(
          onTap: () {
            _navSuccess(context);
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
                color: ColorsAppDark.text
                ,
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

  _navSuccess(context) {
    return Navigator.push(
        context,
        PageTransition(
          child: Success(),
          type: PageTransitionType.leftToRight,
          duration: Duration(milliseconds: 500),
        ),);
  }
}
