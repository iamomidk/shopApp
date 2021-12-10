import 'package:flutter/material.dart';

class ColorInfoBody extends StatelessWidget {
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
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _infoSizbox,
            Text(
              "What colors should I wear?",
              style: _hedder,
            ),
            _hedderSizbox,
            Text(
              """
Color is everywhere, affecting our moods, our fashion sensibilities, even our appetites. 
It is the first thing you notice when you look at something. So when it comes to selecting clothes, 
color plays a very big role.
            """,
              style: _info,
            ),
            _infoSizbox,
            Text('Color Trends - Factors affecting your choices',style: _hedder,),
            _hedderSizbox,
            Text('''
There are some major factors that affect our color choices. 
But they do not work in isolation from each other; our choices are a combination of all of these. 
But most of the time one of these factors outweigh others in our final choice of color.
            ''',style: _info,),
            _infoSizbox,
            Text('Age and gender of the wearer',style: _hedder,),
            _hedderSizbox,
            Text('''
Your 5 year old kid would not like a shirt in a color preferred by his 70 year old grandfather.
When selecting a shirt for your kid you would be going for yellows, minty greens etc instead of the cream or grey or blue your dad may prefer.

Pinks, peach, lavender, soft yellows are preferred universally for kids clothes; 
but as they go older they may look for brighter purple, reds etc. The older kids seems to prefer more mature and earthy colours like tan, terracotta, blue etc

As you age,changes in the skin and the color of the hair are also to be taken into consideration when selecting color.

Stereotyping color preferences based on gender will raise the hackles of my equality advocating daughter, 
raising the sexist banner on me but  they do exist. I bet my husband would stare blank if asked to prefer between teal and sea foam green, whereas I know their difference in my sleep. He probably knows plum as a fruit, not as a color.
            ''',style: _info,)

          ],
        ),
      ),
    );
  }
}
