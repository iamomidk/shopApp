import 'package:flutter/material.dart';

class SinglePhoto extends StatelessWidget {
  String _imageAssets;
  SinglePhoto(this._imageAssets);
  @override
  Widget build(BuildContext context) {

    return Hero(
      tag: "ImageTag",
      child: Image.asset(
        _imageAssets,
      ),
    );
  }
}
