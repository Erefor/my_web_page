import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtroBoton extends StatelessWidget {
  final String text;
  final String route;
  OtroBoton({this.text = '', this.route = ''});
  @override
  Widget build(BuildContext context) {
    final _screenInfo = MediaQuery.of(context).size;
    return Container(
      width: _screenInfo.width < 500 ? 120 : 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: RawMaterialButton(
        padding: EdgeInsets.all(25),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(text,
            style: GoogleFonts.lato(
              color: Color(0xff28527a),
              fontSize: _screenInfo.width < 500 ? 15 : 18,
            )),
      ),
    );
  }
}
