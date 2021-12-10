import 'package:flutter/material.dart';
import 'package:store_app/resource/Strings.dart';

class ReviewsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        Strings.anyReviews,
        style: TextStyle(
          color: Theme.of(context).buttonColor,
        ),
      ),
    );
  }
}
