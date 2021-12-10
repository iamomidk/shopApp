import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/resultCategory/resultCategoryAppBar.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';
import 'package:store_app/resource/fakeData.dart';
import 'package:store_app/resource/fakeImage.dart';
import 'package:store_app/resource/itemBuilder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  reload(){
    return setState((){});
  }
  @override
  Widget build(BuildContext context) {
    // width of screen
    double widthScreen = MediaQuery.of(context).size.width;

// body of home page
    return  Directionality(
              textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // free space for status bar

            // _freeSpaceTop(),
            // stack
            _stack(widthScreen),
            // //  new product section
            _prodctsOffers(),
          ],
        ),
      ),
    );
  }

////////////////////////////////////////////     stack for image and text and button

  _stack(double widthScreen) {
    return Stack(
      children: <Widget>[
        // image
        _image(widthScreen),
        // text on image
        // _txtonImage(),
        // button on image
        _buttonOnImage(),
      ],
    );
  }

////////////////////////////////////////////// free space on top
  _freeSpaceTop() {
    return SizedBox(
      height: 25.0,
    );
  }

////////////////////////////////////////////// image in main page
  _image(double widthScreen) {
    return Container(
      height: 400.0,
      width: widthScreen,
      // create color filter on image
      child:
          // ColorFiltered(
          //   // style color filter
          //   colorFilter: ColorFilter.mode(
          //     Colors.deepOrangeAccent,
          //     BlendMode.color,
          //   ),

          // add my fake image
          // child:
          Image.asset(
        FakeImage.image01,
        fit: BoxFit.cover,
        
      ),
      // ),
    );
  }

////////////////////////////////////////////// text on image
  _txtonImage() {
    return Positioned(
      bottom: 100.0,
      right: 18.0,
      child: Text(
        Strings.fashionSale,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: ColorsAppDark.text,
          
          fontSize: 40.0,
        ),
      ),
    );
  }

////////////////////////////////////////////// button on image
  _buttonOnImage() {
    return Positioned(
      bottom: 50.0,
      right: 10.0,
      child: InkResponse(
        onTap: (){
          navSingleProduct(fakeData[11],context);
        },
        child: Container(
          alignment: Alignment.center,
          // text on button
          child: Text(
            Strings.check,
            style: TextStyle(
              color: ColorsAppDark.text,
            ),
          ),
          // size of button
          width: 160.0,
          height: 36.0,
          // style of button
          decoration: BoxDecoration(
            // color of button
            color: Theme.of(context).buttonColor,
            // border radius
            borderRadius: borderRadius_30,
          ),
        ),
      ),
    );
  }

///////////////////////////////////////////////   new product

  _prodctsOffers() {
    return Column(
      children: <Widget>[
        // text in new product section
        _txthederNew(),
        // product builder in new product section
        itemBuilder(fakeData,reload: reload),
        _divider(),
        // text in bestsellers section
        _txthederBestsellers(),
        // product builder in bestsellers section
        itemBuilder(fakeData,reload: reload),
        _divider(),
        // text in sale and offers section
        _txthederOffers(),
        // product builder in sale and offers section
        itemBuilder(fakeData,reload: reload),
      ],
    );
  }

  /////////////////////////////////////////// text on top left new product section

  _txthederNew() {
    return Padding(
      // free space from left
      padding: const EdgeInsets.only(left: 8.0, top: 20.0, right: 8.0),
      child: Align(
        alignment: Alignment.topLeft,
        // text of new section
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              Strings.New,
              // style of text
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 20.0,
              ),
            ),
            // text in top right new product section
            InkResponse(
              // function for navigation to result page
              onTap: (){
                _navResult();
              },
                          child: Text(
                Strings.viewAll,
                // style of text
                style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /////////////////////////////////////////// text on top left new product section

  _txthederBestsellers() {
    return Padding(
      // free space from left
      padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
      child: Align(
        alignment: Alignment.topLeft,
        // text of bestsellers section
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              Strings.bestsellers,
              // style of text
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 20.0,
              ),
            ),
            // text in top right new product section
             InkResponse(
              // function for navigation to result page
              onTap: (){
                _navResult();
              },
                          child: Text(
                Strings.viewAll,
                // style of text
                style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /////////////////////////////////////////// text on top left new product section

  _txthederOffers() {
    return Padding(
      // free space from left
      padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
      child: Align(
        alignment: Alignment.topLeft,
        // text of bestsellers section
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              Strings.offers,
              // style of text
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 20.0,
              ),
            ),
            // text in top right new product section
             InkResponse(
              // function for navigation to result page
              onTap: (){
                _navResult();
              },
                          child: Text(
                Strings.viewAll,
                // style of text
                style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////////// diveder

  _divider() {
    return Divider(
      // color of diveder
      color: Theme.of(context).cardColor,

      // space divider from left
      indent: 20,

      // space divider from right
      endIndent: 20,
    );
  }

  _navResult(){
    Navigator.push(context, PageTransition(child: ResultCategory(Strings.viewAll), type: PageTransitionType.upToDown));
  }
}
