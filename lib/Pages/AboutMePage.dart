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
          heightFactor: 2,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              _DescriptionWidget(),
              _ContactInfoWidget(),
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
        children: [
          Text(
            kDescription,
            textAlign: TextAlign.justify,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 115),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _CustomDescriptionIcon(icon: FontAwesomeIcons.html5),
              _CustomDescriptionIcon(icon: FontAwesomeIcons.css3),
              _CustomDescriptionIcon(icon: FontAwesomeIcons.js),
              _CustomDescriptionIcon(icon: FontAwesomeIcons.vuejs),
              _CustomDescriptionIcon(icon: FontAwesomeIcons.unity),
            ],
          )
        ],
      ),
    );
  }
}

class _CustomDescriptionIcon extends StatelessWidget {
  final IconData icon;

  const _CustomDescriptionIcon({this.icon = Icons.ac_unit_rounded});
  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: Colors.white, size: 40);
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
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('lib/assets/CEOS.jpg'),
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
