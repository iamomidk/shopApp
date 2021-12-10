import 'package:flutter/material.dart';

class SizeInfoBody extends StatelessWidget {
  // free space from top
  SizedBox _hedderSizbox = SizedBox(
    height: 20,
  );
  SizedBox _infoSizbox = SizedBox(
    height: 35,
  );
  @override
  Widget build(BuildContext context) {
    // text of sizeInfo
    TextStyle _hedder = TextStyle(
      color: Theme.of(context).textSelectionColor,
      fontSize: 20,
    );
    TextStyle _info = TextStyle(
      color: Theme.of(context).textSelectionColor,
      fontSize: 15,
    );

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _infoSizbox,
            Text(
              'The long and the short of it',
              style: _hedder,
            ),
            _hedderSizbox,
            Text(
              '''Clothing sizes have no internationally accepted standard. 
Size charts make it easier to convert or compare international size systems and provide better orientation. 
Each individual manufacturer tailors and styles differently and caters to and adapts its size charts to the mean average of the population within its own country of origin. If available, a manufacturer will usually link a size chart to the product description
            ''',
              style: _info,
            ),
            _infoSizbox,
            Text("Clothing sizes: how to take correct measurements",style: _hedder,),
            _hedderSizbox,
            Text("""
Chest circumference: Under the armpits and across the widest part of the chest. Arms loose at the sides.
Waist circumference: Measure over the navel, making sure that the tape measure is sitting loosely and not too tight.
Hip circumference: Across the widest part of the buttocks.
Arm length: Place one end of the measuring tape at the base of the center of the back of the neck. Run the measuring tape over your shoulder, and let it hang down to your hand. Measure to the center of the meaty part of your palm.(Note: Some manufacturers also specify the arm length “from shoulder tip to wrist”.) Most size charts use this method.
Inseam: Measure along the inside of the leg from crotch to ankle.
Leg length: Start at your waist and lay the measuring tape along the side of your leg, down your thigh, until the tape ends where you would like your pant leg to end. For a traditional length, measure until near the heel of your foot.
            """,style: _info,)
          ],
        ),
      ),
    );
  }
}
