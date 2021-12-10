import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/myBag/myBagAppBar.dart';
import '../pages/singleProduct/singleProductAppBar.dart';
import '../resource/borderRadius.dart';
import '../resource/fakeData.dart';

////////////////////////////////////////////////// item builder for product

// define my variable

List count = new List();

itemBuilder(List item, {Function reload}) {
  return Container(
    height: 260.0,
    // item builder for product
    child: ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        //  item builder is here
        return InkResponse(
          // navigate to single product for view details of product
          onTap: () {
            // navigater to single product page

            navSingleProduct(item[index], context);
          },
          child: Container(
            decoration: BoxDecoration(
              // border radius for container
              borderRadius: borderRadius_15,
            ),
            margin: EdgeInsets.all(10.0),
            width: 140.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // image of products
                _imageOfProduct(item, index),
                // name of produts
                _nameOfProduct(item, index, context),
                // price of product
                _priceOfProduct(item, index, reload, context),
              ],
            ),
          ),
        );
      },
    ),
  );
}

// image of product
_imageOfProduct(List item, int index) {
  return ClipRRect(
    // size of border radius
    borderRadius: borderRadius_15,
    child: Image.asset(
      item[index]["src"],
      width: 140.0,
      height: 170.0,
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
    ),
  );
}

// name of product
_nameOfProduct(List item, int index, context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 8.0,
      left: 2,
      right: 2,
    ),
    child: Text(
      item[index]["name"],
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: TextStyle(
        color: Theme.of(context).textSelectionColor,
      ),
    ),
  );
}

// price of product
_priceOfProduct(List item, int index, Function reload, context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 8.0,
      left: 2,
      right: 2,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          item[index]["price"].toString() ,
          style: TextStyle(
            color: Theme.of(context).textSelectionColor,
          ),
        ),
        _addIcon(index, reload, context),
      ],
    ),
  );
}

// add icon for add in my bag
_addIcon(index, Function reload, context) {
  return InkResponse(
    onTap: () {
      _addItem(index, reload);
    },
    child: Container(
      decoration: BoxDecoration(
          // color of container
          color: Theme.of(context).scaffoldBackgroundColor,
          // shape of continer
          shape: BoxShape.circle,
          // style of shadow container
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).accentColor,
              blurRadius: 10.0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Icon(
          Icons.add,
          color: count.contains(index)
              ? Theme.of(context).buttonColor
              : Theme.of(context).cardColor,
        ),
      ),
    ),
  );
}

// navigation to single product
navSingleProduct(Map product, context) {
  return Navigator.push(
    context,
    PageTransition(
      duration: Duration(milliseconds: 500),
      type: PageTransitionType.downToUp,
      child: SingleProduct(product),
    ),
  );
}

// add item in my bag list
_addItem(int index, Function reload) {
  if (!count.contains(index)) {
    count.add(index);
  } else {
    count.remove(index);
  }
  // count = index;
  reload();
  // insert one number for quantity
  quantityItem.insert(0, 0);
  // add item to my bag list
  return mybagItems.add(fakeData[index]);
}
