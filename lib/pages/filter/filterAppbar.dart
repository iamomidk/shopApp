import 'package:flutter/material.dart';
import 'package:store_app/pages/filter/filterBody.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class FilterAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color of background
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: _appbar(context),
      body: FilterBody(),
      // floating action button in bottom af page
      floatingActionButton: _floatingButton(context),
      // location of floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // appbar for filter page
  _appbar(context) {
    return AppBar(
      // color of background
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // leading in top left of appbar
      leading: _leading(context),
      // title of appbar
      title: _title(context),
      // position of title
      centerTitle: true,
    );
  }

// leading for appbar in top left
  _leading(context) {
    return InkResponse(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Theme.of(context).textSelectionColor,
      ),
    );
  }

  // title of appbar in center
  _title(context) {
    return Text(
      Strings.filters,
      // style of appbar
      style: TextStyle(
        color: Theme.of(context).textSelectionColor,
      ),
    );
  }

  // floating action button

  _floatingButton(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: InkResponse(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  alignment: Alignment.center,
                  // style of container
                  decoration: BoxDecoration(
                    borderRadius: borderRadius_30,
                    border: Border.all(color: Theme.of(context).textSelectionColor),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),

                  // free space from around
                  margin: EdgeInsets.all(10),
                  child: Text(
                    Strings.discard,
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkResponse(
                onTap: () {
                  Navigator.pop(context);
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
                    Strings.apply,
                    style: TextStyle(
                      color: ColorsAppDark.text,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // free space from bottom
        SizedBox(
          height: 20,
        )
      ],
    );
  }

}
