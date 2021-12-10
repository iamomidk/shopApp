import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/colorInfo/colorInfoAppBar.dart';
import 'package:store_app/pages/sizeInfo/sizeInfoAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';
import 'package:store_app/resource/fakeData.dart';
import 'package:store_app/resource/itemBuilder.dart';

class SingleProductBody extends StatefulWidget {
  Map product;
  SingleProductBody(this.product);
  @override
  _SingleProductBodyState createState() => _SingleProductBodyState();
}

class _SingleProductBodyState extends State<SingleProductBody> {
  // define variable
  // boolean for change icon and color of icon when i click the button
  bool _favorite = false;
  String sizeStr = "";

  reload() {
    return setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            // button in bottom left picture
            _containerSize(),
            // button in bottom center picture
            _containerColor(),
            // button in bottm right picture ... favorite icon
            _containerFavorite(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // text for brand name
                _txtBranName(),
                // text for short description
                _txtshorDescription(),
                // icon for value of product
                _iconValue(),
              ],
            ),
            // text for price product
            _txtPrice(),
          ],
        ),
        // text for description of product
        _txtDescription(),
        // item builder for offers
        itemBuilder(fakeData,reload: reload),
        SizedBox(
          height: 70,
        ),
      ],
    );
  }

  // container for size of product
  _containerSize() {
    return Expanded(
      flex: 2,
      child: InkResponse(
        onTap: () {
          bottomsheetSize(context);
        },
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          // style of container
          decoration: BoxDecoration(
            // color of container
            color: Theme.of(context).scaffoldBackgroundColor,
            // border radius of container
            borderRadius: borderRadius_5,
            // style of border container
            border: Border.all(color: Theme.of(context).buttonColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // text on button
              Text(
                Strings.size,
                style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).textSelectionColor,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  // container for color of product
  _containerColor() {
    return Expanded(
      flex: 2,
      child: InkResponse(
        onTap: () {
          _bottomsheetColor(context);
        },
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          // style of container
          decoration: BoxDecoration(
            // color of container
            color: Theme.of(context).scaffoldBackgroundColor,
            // border radius of container
            borderRadius: borderRadius_5,
            // style of border container
            border: Border.all(color: Theme.of(context).cardColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // text on button
              Text(
                Strings.color,
                style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).textSelectionColor,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  // button for favorite icon
  _containerFavorite() {
    return Container(
      decoration: BoxDecoration(
        // shape of button
        shape: BoxShape.circle,
      ),
      child: InkResponse(
        onTap: () {
          setState(() {});
          // for change color and icon favorite
          _favorite = !_favorite;
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          // style of container
          decoration: BoxDecoration(
              // shape of button
              shape: BoxShape.circle,
              // color of container
              color: Theme.of(context).scaffoldBackgroundColor,
              // shadow of container
              boxShadow: [
                BoxShadow(
                  // color of shadow
                  color: Theme.of(context).accentColor,
                  blurRadius: 5,
                )
              ]),
          child: Icon(
            _favorite ? Icons.favorite : Icons.favorite_border,
            color: _favorite ? Colors.red : Colors.grey,
            size: 16,
          ),
        ),
      ),
    );
  }

  // price of product
  _txtPrice() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
           widget.product["price"].toString(),
          // style of text
          style: TextStyle(
              color: Theme.of(context).textSelectionColor, fontSize: 17),
        ),
      ),
    );
  }

  // description  of product
  _txtDescription() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        // free space from around
        padding: const EdgeInsets.all(10),
        child: Text(
          widget.product["Description"],
          // style of text

          style: TextStyle(color: Theme.of(context).cardColor, fontSize: 14),
        ),
      ),
    );
  }

  // text of brand name
  _txtBranName() {
    return Padding(
      // free space from around
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Strings.brand,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 30,
        ),
      ),
    );
  }

  // text of brand name
  _txtshorDescription() {
    return Padding(
      // free space from around
      padding: const EdgeInsets.only(right: 8.0),
      child: Text(
        widget.product["name"],
        // style of text
        style: TextStyle(
          color: Theme.of(context).cardColor,
          fontSize: 13,
        ),
      ),
    );
  }

  // icon for value of product
  _iconValue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
          Icon(
            Icons.star_border,
            color: Theme.of(context).cardColor,
            size: 15,
          ),
        ],
      ),
    );
  }

  ///////////////////////////////////////////////////////////////// bottom sheet for color

  _bottomsheetColor(context) {
    return showModalBottomSheet(
      // border radius for bottm sheet
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(36.0),
      ),

      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (BuildContext context) {
        return BottomSheetColor();
      },
    );
  }

  //////////////////////////////////////////////////////////// bottom sheet for size

  bottomsheetSize(context) {
    return showModalBottomSheet(
      // border radius for bottm sheet
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(34.0),
      ),

      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (BuildContext context) {
        return BottomSheetSize();
      },
    );
  }
}

// BottomSheet in size section
class BottomSheetSize extends StatefulWidget {
  @override
  _BottomSheetSizeState createState() => _BottomSheetSizeState();
}

class _BottomSheetSizeState extends State<BottomSheetSize> {
  String sizeStr = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      // size of bottom sheet
      height: 368,
      // style of bottom sheet
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        // border radius for container
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        ),
      ),
      child: Column(
        children: <Widget>[
          // free space from top
          SizedBox(
            height: 10,
          ),
          // container in top of the bottom sheet
          _designContainer(context),
          // text of hedder in bottom sheet
          _txtHedderBottomsheetSize(),
          // obtional size in bottom sheet
          _firstRow(),
          _secondRow(),
          _divider(context),
          _txtSizeinfo(),
          _divider(context),
          _floatingButton(context),
        ],
      ),
    );
  }

  ///////////// object in bottom sheet

  /// first row in bottom sheet

  _firstRow() {
    return Row(
      children: <Widget>[
        // xs size
        Expanded(
          child: _obtionalSize("XS"),
        ),
        // S size
        Expanded(
          child: _obtionalSize("S"),
        ),
        // M size
        Expanded(
          child: _obtionalSize("M"),
        ),
      ],
    );
  }

  /// second row in bottom sheet

  _secondRow() {
    return Row(
      children: <Widget>[
        // xs size
        Expanded(
          child: _obtionalSize("L"),
        ),
        // S size
        Expanded(
          child: _obtionalSize("XL"),
        ),
        // M size
        Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }

  /// text of heder for size section
  _txtHedderBottomsheetSize() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Strings.selectSize,
        style: TextStyle(
          // color of text
          color: Theme.of(context).textSelectionColor,
          fontSize: 17,
        ),
      ),
    );
  }

  // container for obtional size in bottom hedder text
  _obtionalSize(String size) {
    return InkWell(
      onTap: () {
        sizeStr = size;
        setState(() {});
      },
      child: Container(
        // align for text
        alignment: Alignment.center,
        // free space from around
        margin: EdgeInsets.all(10),
        // height of container
        height: 40.0,
        // style of container
        decoration: BoxDecoration(
          borderRadius: borderRadius_15,
          border: Border.all(
              color: sizeStr == size
                  ? Theme.of(context).buttonColor
                  : Theme.of(context).cardColor),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: sizeStr == size
                ? Theme.of(context).buttonColor
                : Theme.of(context).cardColor,
          ),
        ),
      ),
    );
  }

  // text for size info
  _txtSizeinfo() {
    return InkWell(
      onTap: () {
        navSizeInfo();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                Strings.sizeInfo,
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 14,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).cardColor,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
  // navgation to size info page
  navSizeInfo(){
    return 
        Navigator.push(
          context,
          PageTransition(
            child: SizeInfoAppBar(),
            type: PageTransitionType.rightToLeft,
          ),
        );
  }
}

// BottomSheet in color section
class BottomSheetColor extends StatefulWidget {
  @override
  _BottomSheetColorState createState() => _BottomSheetColorState();
}

class _BottomSheetColorState extends State<BottomSheetColor> {
  Color _color = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
        // size of bottom sheet
        height: 300,
        // style of bottom sheet
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          // border radius for container
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34),
            topRight: Radius.circular(34),
          ),
        ),
        child: Column(
          children: <Widget>[
            // free space from top
            SizedBox(
              height: 10,
            ),
            // container in top of the bottom sheet
            _designContainer(context),
            // text of hedder in bottom sheet
            _txtHedderBottomsheetColor(),
            // obtional size in bottom sheet
            _firstRowColor(),
            _divider(context),
            _txtColorinfo(),
            _divider(context),
            _floatingButton(context),
          ],
        ),
      ),
    );
  }
  // _text for hedder in bottom sheet for color section

  _txtHedderBottomsheetColor() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Strings.selectColor,
        style: TextStyle(
          // color of text
          color: Theme.of(context).textSelectionColor,
          fontSize: 17,
        ),
      ),
    );
  }

  /// first row in bottom sheet

  _firstRowColor() {
    return Row(
      children: <Widget>[
        // xs size
        Expanded(
          child: _obtionalColor(Colors.green),
        ),
        // S size
        Expanded(
          child: _obtionalColor(Colors.blue),
        ),
        // M size
        Expanded(
          child: _obtionalColor(Colors.black),
        ),
        // xs size
        Expanded(
          child: _obtionalColor(Colors.cyan),
        ),
        // S size
        Expanded(
          child: _obtionalColor(Colors.red),
        ),
      ],
    );
  }

  // text for size info
  _txtColorinfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          navColorInfo();
        },
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              Strings.colorInfo,
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).cardColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  // container for obtional size in bottom hedder text
  _obtionalColor(Color color) {
    return InkWell(
      onTap: () {
        setState(() {
          _color = color;
        });
      },
      child: Container(
        // align for text
        alignment: Alignment.center,
        // free space from around
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        // height of container
        height: 40.0,
        // style of container
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: color,
          // borderRadius: borderRadius_15,
          border: Border.all(
              color: _color == color
                  ? Theme.of(context).buttonColor
                  : Theme.of(context).cardColor),
        ),
        child: Container(
          // style of container
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            // borderRadius: borderRadius_5,
          ),
        ),
      ),
    );
  }
  // navgation to color info page
  navColorInfo(){
    return 
        Navigator.push(
          context,
          PageTransition(
            child: ColorInfoAppBar(),
            type: PageTransitionType.rightToLeft,
          ),
        );
  }
}

/// free container

_designContainer(context) {
  return Container(
    margin: EdgeInsets.all(10),
    // size of container
    width: 60,
    height: 6,
    // style of container
    decoration: BoxDecoration(
        // color of container
        color: Theme.of(context).cardColor,
        // border radius for container
        borderRadius: borderRadius_30),
  );
}

// divider
_divider(context) {
  return Divider(
    height: 20,
    color: Theme.of(context).cardColor,
  );
}

// floating action button

_floatingButton(context) {
  return InkResponse(
    // function of button
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      // height of button
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
        Strings.addToFavorite,
        style: TextStyle(
          color: ColorsAppDark.text,
        ),
      ),
    ),
  );
}
