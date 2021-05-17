import 'package:flutter/material.dart';

import 'package:my_web_page/Pages/HomePage.dart';
import 'package:my_web_page/Pages/UiPage.dart';



main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'uiPages',
      routes: {
        '/' : (BuildContext context)=> HomePage(),
        'uiPages' : (BuildContext context)=> UiPage(),
      },
    );
  }
}