import 'package:flutter/material.dart';
import 'package:store_app/resource/Strings.dart';
import 'package:store_app/resource/borderRadius.dart';
import 'package:store_app/resource/colorsCalss.dart';

class FilterBody extends StatefulWidget {
  @override
  _FilterBodyState createState() => _FilterBodyState();
}

class _FilterBodyState extends State<FilterBody> {
  // define my variable
  BuildContext _context;
  // range of rage slider in price section
  RangeValues _selectRange = RangeValues(0, 1000);
  // list of sizes
  List _sizes = ["XS", "S", "M", "L", "XL"];
  int _indexColor = -1;
  // list of colors
  List _colors = [
    Colors.black,
    Colors.blueAccent,
    Colors.brown,
    Colors.cyan,
    Colors.red,
    Colors.blue
  ];
  int _indexSize = -1;
  int _indexCategories = -1;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            // price section in filter page
            _priceSection(),
            // Color section in filter page
            _colorSection(),
            // size section in filter page
            _sizeSection(),
            // category section in filter page
            _categorySection(),
          ],
        ),
      ),
    );
  }

//////////////////////////////////////////////////////////// price section
  _priceSection() {
    return Column(
      children: <Widget>[
        // free space from top

        _titlePrice(),
        // free space from top
        SizedBox(
          height: 10,
        ),
        // range slider in bottom of title text
        _rangeSlide(),
      ],
    );
  }

  // title of price section
  _titlePrice() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.priceRange,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 16,
        ),
      ),
    );
  }

  // title of price section
  _rangeSlide() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: borderRadius_15,
        color: Theme.of(context).primaryColorLight,
      ),
      child: RangeSlider(
        // color of active
        activeColor: Theme.of(context).buttonColor,
        // color when not active
        inactiveColor: Theme.of(context).cardColor,
        onChanged: (RangeValues value) {
          // change range of filter
          setState(() {
            _selectRange = value;
          });
        },
        // range of filter
        values: _selectRange,
        // min and max range
        min: 0,
        max: 1000,
        divisions: 100,
        // label range
        labels:
            RangeLabels("${_selectRange.start}\$", " ${_selectRange.end}\$"),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////// color section

  _colorSection() {
    return Column(
      children: <Widget>[
        // free space from top
        SizedBox(
          height: 10,
        ),
        // free space from top

        _titleColor(),
        // free space from top
        SizedBox(
          height: 10,
        ),
        // list of color
        _listColor(),
      ],
    );
  }

  // title of color section
  _titleColor() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.color,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 16,
        ),
      ),
    );
  }

  // title of price section
  _listColor() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: borderRadius_15,
        color: Theme.of(context).primaryColorLight,
      ),
      child: ListView.builder(
        itemCount: _colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _colorBuilder(_colors[index], index);
        },
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: <Widget>[
      //     _colorBuilder(Colors.black),
      //     _colorBuilder(Colors.blueAccent),
      //     _colorBuilder(Colors.brown),
      //     _colorBuilder(Colors.cyan),
      //     _colorBuilder(Colors.red),
      //     _colorBuilder(Colors.blue),
      //   ],
      // ),
    );
  }

  // color builder
  _colorBuilder(Color _color, index) {
    return InkResponse(
      onTap: () {
        setState(() {
          _indexColor = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        // size of container
        width: 30,
        height: 30,
        // free space from around
        padding: EdgeInsets.all(2),
        // style of container
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: _indexColor == index
                ? Theme.of(context).buttonColor
                : Theme.of(context).cardColor,
          ),
        ),
        child: Container(
          // size of container
          width: 30,
          height: 30,
          // style of container
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _color,
          ),
        ),
      ),
    );
  }

  /////////////////////////////////////////////////////////////////// size section

  _sizeSection() {
    return Column(
      children: <Widget>[
        // free space from top
        SizedBox(
          height: 10,
        ),
        // title of size section

        _titleSize(),
        // free space from top
        SizedBox(
          height: 10,
        ),
        // list of size
        _listSize(),
      ],
    );
  }

  // title of size section
  _titleSize() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.size,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 16,
        ),
      ),
    );
  }

  // title of size section
  _listSize() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: borderRadius_15,
        color: Theme.of(context).primaryColorLight,
      ),
      child: ListView.builder(
        itemCount: _sizes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _sizeBuilder(_sizes[index], index);
        },
      ),
    );
  }

  // size builder
  _sizeBuilder(String str, index) {
    return InkResponse(
      onTap: () {
        setState(() {
          _indexSize = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        // size of container
        width: 30,
        height: 30,
        // free space from around
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        // style of container
        decoration: BoxDecoration(
          borderRadius: borderRadius_5,
          border: Border.all(
            color: _indexSize == index
                ? Theme.of(context).buttonColor
                : Theme.of(context).cardColor,
          ),
        ),
        child: Text(
          str,
          // style of text
          style: TextStyle(
            color: _indexSize == index
                ? Theme.of(context).buttonColor
                : Theme.of(context).textSelectionColor,
          ),
        ),
      ),
    );
  }

  /////////////////////////////////////////////////////////////////// category section

  _categorySection() {
    return Column(
      children: <Widget>[
        // free space from top
        SizedBox(
          height: 10,
        ),
        // title of category section

        _titleCategory(),
        // free space from top
        SizedBox(
          height: 10,
        ),
        // list of category
        _listCategory(),
        // free space from bottom
        SizedBox(
          height: 90,
        ),
      ],
    );
  }

  // title of category section
  _titleCategory() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.categories,
        // style of text
        style: TextStyle(
          color: Theme.of(context).textSelectionColor,
          fontSize: 16,
        ),
      ),
    );
  }

  // title of category section
  _listCategory() {
    return Container(
      // free space from arond of object in countainer
      padding: EdgeInsets.all(10),
      // style of container
      decoration: BoxDecoration(
        borderRadius: borderRadius_15,
        color: Theme.of(context).primaryColorLight,
      ),
      child: Column(
        children: <Widget>[
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _categoryBuilder("All", 0),
              _categoryBuilder("Women", 1),
              _categoryBuilder("Men", 2),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _categoryBuilder("Bodys", 3),
              _categoryBuilder("Girls", 4),
            ],
          ),
        ],
      ),
    );
  }

  // size builder
  _categoryBuilder(String str, int value) {
    return InkResponse(
      onTap: () {
        setState(() {
          _indexCategories = value;
        });
      },
      child: Container(
        alignment: Alignment.center,
        // size of container
        width: 80,
        height: 30,
        // free space from around
        margin: EdgeInsets.all(10),
        // style of container
        decoration: BoxDecoration(
          borderRadius: borderRadius_5,
          border: Border.all(
            color: _indexCategories == value
                ? Theme.of(context).buttonColor
                : Theme.of(context).cardColor,
          ),
        ),
        child: Text(
          str,
          // style of text
          style: TextStyle(
            color: _indexCategories == value
                ? Theme.of(context).buttonColor
                :Theme.of(context).textSelectionColor,
          ),
        ),
      ),
    );
  }
}
