import 'package:flutter/material.dart';
import 'package:store_app/resource/colorsCalss.dart';

class Processing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("You dont have any order in this section",style: TextStyle(color: Theme.of(context).buttonColor),),
      
    );
  }
}