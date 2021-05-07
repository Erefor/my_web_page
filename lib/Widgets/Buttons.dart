import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OtroBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsetsDirectional.all(25),
      child: RawMaterialButton(
        padding: EdgeInsetsDirectional.all(10),
        onPressed: (){
          print('Works');
        },
        child: Text('Give a look', style: GoogleFonts.lato(
          color: Color(0xff28527a),
          fontSize: 20,
        )),
      ),
    );
  }
}