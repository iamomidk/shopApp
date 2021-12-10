import 'package:flutter/material.dart';
import 'package:store_app/pages/colorInfo/colorInfoBody.dart';

class ColorInfoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkResponse(
          onTap: () {
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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Color info",
          style: TextStyle(color: Theme.of(context).textSelectionColor),
        ),
        centerTitle: true,
      ),
      body: ColorInfoBody(),
    );
  }
}
