import 'package:flutter/material.dart';
import 'package:store_app/pages/myBag/myBagAppBar.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';
import 'package:store_app/resource/fakeData.dart';
import 'package:store_app/resource/itemBuilder.dart';

class ResultCategoryBody extends StatefulWidget {
  int index;
  ResultCategoryBody(this.index);

  @override
  _ResultCategoryBodyState createState() => _ResultCategoryBodyState();
}

class _ResultCategoryBodyState extends State<ResultCategoryBody> {
  // define variable
  List count = new List();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkResponse(
          onTap: () {
            navSingleProduct(fakeData[widget.index], context);
          },
          child: Container(
            // free space from around
            margin: EdgeInsets.all(10),
            // style of container
            decoration: BoxDecoration(
              borderRadius: borderRadius_5,
              color: Theme.of(context).primaryColorLight,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).accentColor,
                  blurRadius: 1,
                )
              ],
            ),
            child: Row(
              children: <Widget>[
                // image of product
                _image(),
                // free pace between object
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _name(),
                    _iconValue(),
                    _price(),
                  ],
                ),
              ],
            ),
          ),
        ),
        _addIcon()
      ],
    );
  }

  _addIcon() {
    return Positioned(
      bottom: 0,
      left: 5,
      child: InkResponse(
        // function of the button
        onTap: () {
          // this line means ...  when click the button  ... that item add in mybag list
          _addItem();
        },
        child: Container(
          // free space from around
          padding: EdgeInsets.all(5),
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
            color: count.contains(widget.index)
                ? Theme.of(context).buttonColor
                : Theme.of(context).cardColor,
          ),
        ),
      ),
    );
  }

  _image() {
    return Container(
      // size of container
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: borderRadius_5,
        child: Image.asset(
          fakeData[widget.index]["src"],
          width: 80,
          height: 80,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  _name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Text(
        fakeData[widget.index]["name"],
        overflow: TextOverflow.visible,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

  _price() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Text(
        fakeData[widget.index]["price"].toString() ,
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

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

  /////////////////////////////////////////////      FUNCTIONS     ///////////////////////

  _addItem() {

    if (!count.contains(widget.index)) {
      count.add(widget.index);
    quantityItem.insert(0, 0);
    mybagItems.add(fakeData[widget.index]);
    } else {
      count.remove(widget.index);
    }
    print("\n$count");
    setState(() {
    });
  }
}
