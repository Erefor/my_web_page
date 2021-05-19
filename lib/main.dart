import 'package:flutter/material.dart';

import 'package:my_web_page/Pages/HomePage.dart';
import 'package:my_web_page/Pages/UiPage.dart';
import 'package:my_web_page/TestUiPage.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'test',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'uiPages': (BuildContext context) => UiPage(),
        'test': (BuildContext context) => TestUiPage()
      },
    );
  }
}
