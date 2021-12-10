import 'package:flutter/material.dart';
import 'package:store_app/pages/sizeInfo/sizeInfoBody.dart';

class SizeInfoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: InkResponse(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back_ios,color: Theme.of(context).textSelectionColor,),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Size info",
          style: TextStyle(color: Theme.of(context).textSelectionColor),
        ),
        centerTitle: true,
      ),
      body: SizeInfoBody(),
    );
  }
}
