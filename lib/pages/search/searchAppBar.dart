import 'package:flutter/material.dart';
import 'package:store_app/pages/search/searchBody.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/fakeData.dart';

class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
        // background color in search page
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        body: CustomScrollView(
          slivers: <Widget>[
            // appbar of search page

            _appbar(context),

            // body of search

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return SearchBody(index);
                },
                childCount: fakeData.length,
              ),
              // number of object
            )
          ],
        ),
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

      expandedHeight: 130,
      // obtional filter for product
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                borderRadius: borderRadius_30,
                color: Theme.of(context).primaryColorLight),
            child: TextField(
              
              onChanged: (value) {
                // you can sort data for user in this section
              },
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,

                // styel of labeltext in textfield

                labelStyle: TextStyle(
                  color: Colors.cyan,
                ),
                labelText: Strings.search,
              ),
            ),
          ),
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
}
