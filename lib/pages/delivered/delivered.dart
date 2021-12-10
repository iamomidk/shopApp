import 'package:flutter/material.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';
import 'package:store_app/resource/fakeData.dart';

class Delivered extends StatelessWidget {

  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: fakeOrder.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // free space from around
            margin: EdgeInsets.all(10),
            // style of container
            decoration: BoxDecoration(
              borderRadius: borderRadius_5,
              color: Theme.of(context).primaryColorLight,
            ),
            child: Column(
              children: <Widget>[
                // name of order
                _nameDate(index),
                // tracking number section
                _tracking(index),
                // quantity and total amount section
                _quantityPrice(index),
                // button details and delivered text
                _buttonDelivered(),
              ],
            ),
          );
        },
      ),
    );
  }

// name and date of order section
  _nameDate(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          // free space from around
          padding: const EdgeInsets.all(8.0),
          child: Text(
            fakeOrder[index]["name"],
            // style of text
            style: TextStyle(
              color: Theme.of(_context).textSelectionColor,
            ),
          ),
        ),
        Padding(
          // free space from around
          padding: const EdgeInsets.all(8.0),
          child: Text(
            fakeOrder[index]["date"],
            // style of text
            style: TextStyle(
              color: Theme.of(_context).cardColor,
            ),
          ),
        ),
      ],
    );
  }

// tracking number section
  _tracking(int index) {
    return Row(
      children: <Widget>[
        Padding(
          // free space from around
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Strings.tracking,
            // style of text
            style: TextStyle(
              color: Theme.of(_context).textSelectionColor,
            ),
          ),
        ),
        Padding(
          // free space from around
          padding: const EdgeInsets.all(8.0),
          child: Text(
            fakeOrder[index]["tracking"],
            // style of text
            style: TextStyle(
              color: Theme.of(_context).cardColor,
            ),
          ),
        ),
      ],
    );
  }

// quantity and total amount section
  _quantityPrice(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              // free space from around
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Strings.quantity,
                // style of text
                style: TextStyle(
                  color: Theme.of(_context).textSelectionColor,
                ),
              ),
            ),
            Padding(
              // free space from around
              padding: const EdgeInsets.all(8.0),
              child: Text(
                fakeOrder[index]["quantity"].toString(),
                // style of text
                style: TextStyle(
                  color: Theme.of(_context).cardColor,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              // free space from around
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Strings.totalAmount,
                // style of text
                style: TextStyle(
                  color: Theme.of(_context).textSelectionColor,
                ),
              ),
            ),
            Padding(
              // free space from around
              padding: const EdgeInsets.all(8.0),
              child: Text(
                fakeOrder[index]["total"].toString() + "\$",
                // style of text
                style: TextStyle(
                  color: Theme.of(_context).cardColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // details button and delivered text
  _buttonDelivered() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 90,
          // free space from around
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          alignment: Alignment.center,
          // style of container
          decoration: BoxDecoration(
            borderRadius: borderRadius_30,
            border: Border.all(
              color: Theme.of(_context).textSelectionColor,
              
            ),
          ),
          child: Text(
            Strings.details,
            style: TextStyle(
              color: Theme.of(_context).cardColor,
            ),
          ),
        ),
        Padding(
          // free space from around
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Strings.delivered,
            // style of text
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        )
      ],
    );
  }
}
