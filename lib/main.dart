import './resource/colorsCalss.dart';
import 'package:flutter/material.dart';
import './pages/changeTheme/changeTheme.dart';
import './pages/login/loginAppBar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(true),
      child: new MaterialAppWithTheme(),

    );
  }

}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final  _dark = Provider.of<ThemeChanger>(context);

    
  // This widget is the root of your application.

  // define two theme for light and dark mood

  // dark theme

  ThemeData _darkTheme = ThemeData(
    // this color for background in dark theme
    scaffoldBackgroundColor: ColorsAppDark.background,
    // this color for button in dark theme
    buttonColor: ColorsAppDark.button,
    // this color for error color in dark theme
    errorColor: ColorsAppDark.error,
    // this color for success in dark theme
    // success: ColorsAppDark.success,
    primaryColor: ColorsAppDark.success,
    // this color for text in dark theme
    textSelectionColor: ColorsAppDark.text,
    // this color for dark in dark theme
    primaryColorLight:  ColorsAppDark.dark,
    // this color for carts in dark theme
    cardColor: ColorsAppDark.grey, 
    // color of shadow containers
    accentColor: ColorsAppDark.shadow,
    fontFamily: "productSans",
  );
  // dark theme

  ThemeData _lightTheme = ThemeData(
    // this color for background in light theme
    scaffoldBackgroundColor:  ColorsAppLight.background,
    // background: ColorsAppLight.background,
    // this color for button in light theme
    buttonColor: ColorsAppLight.button,
    // this color for error color in light theme
    errorColor: ColorsAppLight.error,
    // this color for success in light theme
    primaryColor: ColorsAppDark.success,
    // this color for text in light theme
    textSelectionColor: ColorsAppLight.text,
    // this color for dark in light theme
    primaryColorLight: ColorsAppLight.wihte,
    // this color for carts in light theme
    cardColor: ColorsAppLight.grey,
    // color for shadow
    accentColor: ColorsAppLight.shadow,
    // shadow:ColorsAppLight.shadow,
    fontFamily: "productSans",
  );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: _dark.getTheme() ? _darkTheme : _lightTheme,
    );
  }
}