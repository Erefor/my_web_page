import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_page/Pages/UiPages.dart/Emergency%20Page/EmergencyPage.dart';
import 'package:my_web_page/Pages/UiPages.dart/UiFormPage.dart';
import 'package:my_web_page/Pages/UiPages.dart/UiGreenPage.dart';
class UiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: LayoutBuilder(
        builder: (context, constrains){
          if(constrains.maxWidth > 879){
            return _FullView();
          }else{
            return _LowView();
          }
        },
      )
    );
  }
}

class _LowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: double.infinity,height: 20,),
          DescriptionText(),
          SizedBox(height: 20,),
          PageHolder(widget: EmergencyPage()),
          SizedBox(height: 20,),
          PageHolder(widget: UiFormPage()),
          SizedBox(height: 20,),
          PageHolder(widget: UiGreenPage()),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}

class _FullView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DescriptionText(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              PageHolder(widget: EmergencyPage()),

              PageHolder(widget: UiFormPage()),    
            ],
          ),
          SizedBox(height: 20,),
          PageHolder(widget: UiGreenPage()),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              PageHolder(widget: EmergencyPage()),

              PageHolder(widget: EmergencyPage()),    
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}


class PageHolder extends StatelessWidget {
  final Widget widget;
  const PageHolder({Key? key,required this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 665,
        width: 410,
        child: widget,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  final String headText = 'No matter how complex the design became:';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 50),
          child: FlutterLogo(size: 250,),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(headText,
              textStyle: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 60, 
              ),
              speed: Duration(milliseconds: 100),
            )
          ]),
        ),
      ],
    );
  }
}