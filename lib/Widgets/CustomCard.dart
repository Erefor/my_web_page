import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  
  
  final IconData icono;
  final String dato;
  CustomCard(this.dato,this.icono);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      width: 350,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: EdgeInsets.all(5),
      child: ListTile(
        leading: Icon(
          icono,
          color: Color(0xff28527a),
        ),
        title: Text(
          dato,
          style: GoogleFonts.lato(
            color: Color(0xff28527a),
            fontSize: 20.0,
          )
        ),

      )
    );
  }
}