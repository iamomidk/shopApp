import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/singleProduct/singleProductBody.dart';
import 'package:store_app/pages/singlephoto/singlePhoto.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class SingleProduct extends StatelessWidget {
  Map product;
  SingleProduct(this.product);
  @override
  Widget build(BuildContext context) {
    return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        floatingActionButton: _floatingButton(context),
        // color of background
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: CustomScrollView(
          slivers: <Widget>[
            // appbar of single product page

            _appbar(context),

            // body of single product

            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SingleProductBody(product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // floating action button

  _floatingButton(context) {
    return Container(
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
        Strings.addToCart,
        style: TextStyle(
          color: ColorsAppDark.text,
        ),
      ),
    );
  }

  // icon on top left  ...  arrow back
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

  // app bar
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
      // object in app bart
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(),
          // name of product ...  in top center of appbar
          Expanded(
            child: Text(
              product["name"],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 15,
              ),
            ),
          ),
          // icon in top right... share icon
          _shareIcon(context),
        ],
      ),
      // size of app bar
      expandedHeight: 350,
      // image of product   ...  image in appbar
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: InkResponse(
            // function to single photo page
            // for show phicture
            onTap: () {
              _navSinglePhoto(context);
            },
            child: Container(
              color: Colors.white,
              child: Hero(
                tag: "ImageTag",
                child: Image.asset(
                  product['src'],
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _shareIcon(context) {
    return InkResponse(
      // function of share icon
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.share,
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }

  // navigate to single photo
  _navSinglePhoto(context) {
    return Navigator.push(
      context,
      PageTransition(
          child: SinglePhoto(
            // image assets
            // image address
            product['src'],
          ),
          type: PageTransitionType.upToDown),
    );
  }
}
