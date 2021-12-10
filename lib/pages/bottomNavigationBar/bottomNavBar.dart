import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:store_app/pages/categories/categoriesAppBar.dart';
import 'package:store_app/pages/homePage.dart/homePage.dart';
import 'package:store_app/pages/myBag/myBagAppBar.dart';
import 'package:store_app/pages/profile/profileAppBar.dart';
import 'package:store_app/resource/colorsCalss.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavBar> {
  // page name for navigation between page in bottom navigation bar
  Widget _pageName = HomePage();
  // width of animation
  double _width = 0.0;
  // duration of animation
  Duration _duration = Duration(milliseconds: 500);
  // color of background bottom navigation bar
  Color _background ;
  @override
  Widget build(BuildContext context) {
    _background = Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
      // color of background app
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      // bottom navigation bar
      bottomNavigationBar: _bottomNavBar(),
      body: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: <Widget>[
          _pageName,
          Positioned(
            // positioned of animation container
            bottom: -100,
            child: AnimatedContainer(
              width: _width,
              height: _width,
              curve: Curves.ease,
              duration: _duration,
              child: Container(
                // incres size of animation container  
                width: _width,
                height: _width,
                // style of animation container
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // bottom navigation bar
  _bottomNavBar() {
    return CurvedNavigationBar(
      // time of animation is running
      animationDuration: Duration(milliseconds: 400),
      // color of background button
      buttonBackgroundColor: Theme.of(context).primaryColorLight,
      // color of button
      backgroundColor: _background,
      // size of bottom navigation bar
      height: 60.0,
      // color of bottom navigation bar
      color: Theme.of(context).primaryColorLight,
      // items of bottom navigation bar
      items: <Widget>[
        // fist icon in bottom navigation bar
        Icon(
          Icons.home,
          size: 30,
          color: Theme.of(context).buttonColor,
        ),
        // second icon in bottom navigation bar

        Icon(
          Icons.list,
          size: 30,
          color: Theme.of(context).buttonColor,
        ),
        // third icon in bottom navigation bar

        Icon(
          Icons.shopping_cart,
          size: 30,
          color: Theme.of(context).buttonColor,
        ),
        // forth icon in bottom navigation bar

        Icon(
          Icons.account_circle,
          size: 30,
          color: Theme.of(context).buttonColor,
        ),
      ],
      // tap for navigation between page
      onTap: (index) {
        // setState for reload page
        setState(() {});
        // width of animation container
        _width = 1000.0;
        _background = Theme.of(context).buttonColor;
        // delay for wait to animation finished
        Future.delayed(_duration).whenComplete(() {
          _width = 0;
          setState(() {});
          Future.delayed(Duration(milliseconds: 300)).whenComplete(() {
            setState(() {});
            _background = Theme.of(context).scaffoldBackgroundColor;
          });
        });

        // select page when finished delay time
        Future.delayed(Duration(milliseconds: 100)).whenComplete(() {
          switch (index) {
            // first icon
            case 0:
              _pageName = HomePage();
              break;
            // second icon
            case 1:
              _pageName = Categories();
              break;
            // third icon
            case 2:
              _pageName = MyBag();
              break;
            // forth icon
            case 3:
              _pageName = Profile();
              break;
          }
        });
      },
    );
  }
}
