import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/cancelled/Cancelled.dart';
import 'package:store_app/pages/delivered/delivered.dart';
import 'package:store_app/pages/processing/processing.dart';
import 'package:store_app/pages/search/searchAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class MyOrderAppBar extends StatefulWidget {
  @override
  _MyOrderAppBarState createState() => _MyOrderAppBarState();
}

class _MyOrderAppBarState extends State<MyOrderAppBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // for reload page
    _tabController.addListener(() {
      setState(() {});
    });
    return Scaffold(
      // color of background
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _appbar(),
      body: TabBarView(
        controller: _tabController,
        children: [
          // delivered page
          Delivered(),
          // processing page
          Processing(),
          // cancelled page
          // Cancelled(),
          Delivered(),
        ],
      ),
    );
  }

  _appbar() {
    return AppBar(
      leading: _leading(),
      // color of appbar
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // title of appbar
      title: _title(),
      // hedder and tab bar
      bottom: PreferredSize(
        child: Column(
          children: <Widget>[
            // hedder text fro appbar

            _txtHedder(),
            // free space from top
            SizedBox(
              height: 15,
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Theme.of(context).textSelectionColor,
              onTap: (value) {
                setState(() {});
              },
              tabs: [
                Tab(
                  child: _tabBuilderDeliver(
                      Strings.delivered, _tabController.index),
                ),
                Tab(
                  child: _tabBuilderProcessing(
                      Strings.processing, _tabController.index),
                ),
                Tab(
                  child: _tabBuilderCancelled(
                      Strings.cancelled, _tabController.index),
                ),
              ],
            ),
          ],
        ),
        // size of appbar
        preferredSize: Size.fromHeight(100),
      ),
    );
  }

  //tab builder for tab bar view section

  // tab builder for deliver section
  _tabBuilderDeliver(String str, int index) {
    bool _color;
    // for change color when click the tabbar
    if (index == 0) {
      _color = true;
    } else {
      _color = false;
    }
    return Container(
      alignment: Alignment.center,
      // size of container
      width: 80,
      height: 30,
      // style of container
      decoration: BoxDecoration(
        borderRadius: borderRadius_30,
        color: _color
            ? Theme.of(context).textSelectionColor
            : Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Text(
        str,
        style: TextStyle(
            color: _color
                ? Theme.of(context).scaffoldBackgroundColor
                : Theme.of(context).textSelectionColor),
      ),
    );
  }

  // tab builder for deliver section
  _tabBuilderProcessing(String str, int index) {
    bool _color;

    // for change color when click the tabbar
    if (index == 1) {
      _color = true;
    } else {
      _color = false;
    }
    return Container(
      alignment: Alignment.center,
      // size of container
      width: 80,
      height: 30,
      // style of container
      decoration: BoxDecoration(
        borderRadius: borderRadius_30,
        color: _color
            ? Theme.of(context).textSelectionColor
            : Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Text(
        str,
        style: TextStyle(
          color: _color
              ? Theme.of(context).scaffoldBackgroundColor
              : Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

  // tab builder for deliver section
  _tabBuilderCancelled(String str, int index) {
    bool _color;

    // for change color when click the tabbar
    if (index == 2) {
      _color = true;
    } else {
      _color = false;
    }
    return Container(
      alignment: Alignment.center,
      // size of container
      width: 80,
      height: 30,
      // style of container
      decoration: BoxDecoration(
        borderRadius: borderRadius_30,
        color: _color
            ? Theme.of(context).textSelectionColor
            : Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Text(
        str,
        style: TextStyle(
          color: _color
              ? Theme.of(context).scaffoldBackgroundColor
              : Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

// title of appbar
  _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(),
        InkResponse(
          onTap: (){
            _navSearch(context);
          },
                  child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.search,
                size: 30,
                color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // leading in top left appbar
  _leading(){    
    return 
        InkWell(
          // function for navigate back
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child:  Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).textSelectionColor,
              ),
            
          ),
        );
  }

  _txtHedder() {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Strings.myorder,
          style: TextStyle(
            color: Theme.of(context).textSelectionColor,
            fontSize: 30,
          ),
        ),
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
