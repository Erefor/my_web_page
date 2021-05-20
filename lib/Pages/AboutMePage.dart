import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_page/constants/constants.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff153D75),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            direction: Axis.horizontal,
            children: [
              //_IconsSection(),
              _DescriptionWidget(),
              _ContactInfoWidget(),
              _IconsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 450,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInLeftBig(
            child: Text(
              kDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _IconsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      child: Wrap(
        spacing: 30,
        children: <Widget>[
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.html5,
            seconds: 0,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.css3,
            seconds: 1,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.js,
            seconds: 2,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.vuejs,
            seconds: 3,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.android,
            seconds: 4,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.react,
            seconds: 5,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.gitAlt,
            seconds: 6,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.github,
            seconds: 7,
          ),
          _CustomDescriptionIcon(
            icon: FontAwesomeIcons.bootstrap,
            seconds: 8,
          ),
        ],
      ),
    );
  }
}

class _CustomDescriptionIcon extends StatelessWidget {
  final IconData icon;
  final int seconds;

  const _CustomDescriptionIcon(
      {this.icon = Icons.ac_unit_rounded, this.seconds = 0});
  @override
  Widget build(BuildContext context) {
    return FadeIn(
        delay: Duration(seconds: this.seconds),
        child: Icon(icon, color: Colors.white, size: 50));
  }
}

class _ContactInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 450,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 10,
              color: Colors.black,
              offset: Offset(0, 5),
            )
          ]),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                image: AssetImage('lib/assets/CEOS.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
