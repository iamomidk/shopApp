import 'package:flutter/material.dart';
import 'package:store_app/pages/reviews/reviewsBody.dart';
import 'package:store_app/resource/Strings.dart';

class ReviewsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _appbar(context),
      body: ReviewsBody(),
    );
  }

  _appbar(context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      centerTitle: true,
      leading: InkResponse(
        onTap: (){
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).textSelectionColor,
          ),
        ),
      ),
      title: Text(
        Strings.reviews,
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
        ),
      ),
    );
  }
}
