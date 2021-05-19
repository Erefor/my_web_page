import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_page/Providers/UiPageController.dart';
import 'package:provider/provider.dart';

class UiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiPageController(),
      child: Scaffold(
        backgroundColor: Color(0xff153D75),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
              ),
              DescriptionText(),
              LayoutBlock2(),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutBlock2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiPageController>(context);
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 150,
      children: <Widget>[
        _PagesNavigationController(),
        PageHolder(
          widget: uiProvider.widget,
        )
      ],
    );
  }
}

class _PagesNavigationController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiPageController>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      width: 300,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Check some examples',
              style: GoogleFonts.roboto(
                fontSize: 25,
                color: Color(0xff153D75),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RawMaterialButton(
                onPressed: () {
                  uiProvider.downIndex();
                },
                child: Icon(
                  Icons.chevron_left,
                  size: 100,
                  color: Color(0xff153D75),
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  uiProvider.upIndex();
                },
                child: Icon(
                  Icons.chevron_right,
                  size: 100,
                  color: Color(0xff153D75),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PageHolder extends StatelessWidget {
  final Widget widget;
  const PageHolder({Key? key, required this.widget}) : super(key: key);
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
  final String headText = 'No matter how complex the design became';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: FadeInLeft(
              delay: Duration(seconds: 2),
              child: FlutterLogo(
                size: 150,
              )),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
            child: FadeIn(
              delay: Duration(seconds: 3),
              child: Text(
                headText,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 45,
                ),
                textAlign: TextAlign.justify,
              ),
            )),
      ],
    );
  }
}
