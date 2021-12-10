import 'package:flutter/material.dart';
import 'package:store_app/pages/myBag/myBagAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class MyBagBody extends StatefulWidget {
  int index;
  Function reload;
  MyBagBody(this.index, this.reload);
  @override
  _MyBagBodyState createState() => _MyBagBodyState();
}

class _MyBagBodyState extends State<MyBagBody> {
  // define variable

  // size of width screen
  double widthOfScreen;
  @override
  Widget build(BuildContext context) {
    widthOfScreen = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          // free space from around
          margin: EdgeInsets.all(10),
          // style of container
          decoration: BoxDecoration(
            borderRadius: borderRadius_5,
            color: Theme.of(context).primaryColorLight,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // image of product
              _image(),
              // free pace between object
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // name of product
                      _name(),
                      // close icon for remove product from mybag liset
                      _removeIcon(),
                    ],
                  ),
                  _detailItem(),
                  Row(
                    children: <Widget>[
                      // minuse icon button for reduse number
                      _minusIcon(),
                      // text for show number
                      _txtQuantity(),
                      // add icon button for increase number
                      _addIcon(),
                      // free space between objec
                      SizedBox(
                        width: 20,
                      ),
                      // price of item
                      _price(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // for the final item
        // give us free space from bottom
        widget.index == mybagItems.length - 1
            ? SizedBox(
                height: 100,
              )
            : Container(),
      ],
    );
  }

  // text for quantity items
  _txtQuantity() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        quantityItem[widget.index].toString(),
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

  // more icon in top right of the cart
  _removeIcon() {
    return InkResponse(
      // function of button ... remove item from list
      onTap: () {
        setState(() {});
        _removeItem(widget.index);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.close,
          color: Theme.of(context).buttonColor,
        ),
      ),
    );
  }

  // details item
  _detailItem() {
    return Row(
      children: <Widget>[
        // color section ... bottom of the name product
        _colorSection(),
        // free space between object
        SizedBox(
          width: 10,
        ),
        // size section  ... bottom of the name product
        _sizeSection(),
      ],
    );
  }

  // color section
  _colorSection() {
    return Row(
      children: <Widget>[
        Text(
          Strings.color + ":  ",
          // style of text
          style: TextStyle(
            color: Theme.of(context).cardColor,
            fontSize: 10,
          ),
        ),
        Text(
          Strings.black,
          // style of text
          style: TextStyle(
            color: Theme.of(context).textSelectionColor,
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  // color section
  _sizeSection() {
    return Row(
      children: <Widget>[
        Text(
          Strings.size + ":  ",
          // style of text
          style: TextStyle(
            color: Theme.of(context).cardColor,
            fontSize: 10,
          ),
        ),
        Text(
          "L",
          // style of text
          style: TextStyle(
            color: Theme.of(context).textSelectionColor,
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  // add icon in bottom cart
  _addIcon() {
    return InkResponse(
      onTap: () {
        _increase(widget.index);
      },
      child: Container(
        // free space from around
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        // style of the button
        decoration: BoxDecoration(
          // shape of button
          shape: BoxShape.circle,
          // color of button
          color: Theme.of(context).primaryColorLight,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).accentColor,
              blurRadius: 5,
            ),
          ],
        ),

        child: Icon(
          Icons.add,
          color: Theme.of(context).cardColor,
        ),
      ),
    );
  }

  // minus icon in bottom cart
  _minusIcon() {
    return InkResponse(
      onTap: () {
        _reduse(widget.index);
      },
      child: Container(
        // free space from around
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        // style of the button
        decoration: BoxDecoration(
          // shape of button
          shape: BoxShape.circle,
          // color of button
          color: Theme.of(context).primaryColorLight,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).accentColor,
              blurRadius: 5,
            ),
          ],
        ),

        child: Icon(
          Icons.remove,
          // color of icon
          color: Theme.of(context).cardColor,
        ),
      ),
    );
  }

  // image of item
  _image() {
    return Container(
      // size of container
      width: 100,
      height: 100,
      padding: EdgeInsets.only(left:3),
      child: ClipRRect(
        // border radius for image
        borderRadius: borderRadius_5,
        child: Image.asset(
          mybagItems[widget.index]["src"],
          // size of image
          width: 80,
          height: 80,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  // name of item
  _name() {
    return Container(
      width: widthOfScreen * .45,
      child: Text(
        mybagItems[widget.index]["name"],
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

  // price of item
  _price() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        mybagItems[widget.index]["price"].toString() ,
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

//////////////////////////////////////////////         FUNCTIONS        ///////////////////////////////////

// remove item from my bag list

  _removeItem(int index) {
    // remove item from list
    mybagItems.removeAt(index);
    // reload my bag appbar page
    widget.reload();
  }

// increase number of quantity item

  _increase(int index) {
    // reload my bag appbar page
    widget.reload();
    // reload  my bag  body page
    setState(() {
      // that means : number = number + 1;
      quantityItem[index]++;
    });
  }

// reduse number of quantity item

  _reduse(int index) {
    // reload  my bag appbar page
    widget.reload();
    // reload  my bag  body page
    setState(() {
      // that means : number = number - 1;
      quantityItem[index]--;
    });
  }
}
