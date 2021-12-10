import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/pages/search/searchAppBar.dart';
import 'package:store_app/pages/setting/settingBody.dart';

class SettingAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _appbar(context),
      body: SettingBody(),
    );
  }

  _appbar(context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: InkResponse(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).textSelectionColor,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          
        InkResponse(
          onTap: (){
            _navSearch(context);
          },
                      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
  _navSearch(context) {
    return Navigator.push(
      context,
      PageTransition(
        child: SearchAppBar(),
        type: PageTransitionType.rightToLeftWithFade,
      ),
    );
  }
}
