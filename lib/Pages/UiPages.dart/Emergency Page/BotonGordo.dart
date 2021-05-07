import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final String? text;
  final IconData? icono;
  final Color? color1;
  final Color? color2;

  BotonGordo({this.text, this.icono, this.color1, this.color2});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black.withOpacity(0.2),offset: Offset(4, 3), blurRadius: 10)
        ],
        gradient: LinearGradient(
          colors: <Color>[
            color1!,
            color2!,
          ]
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: ButtonContent(icono: icono!,text: text!,)
      ),
    );
  }
}

class ButtonContent extends StatelessWidget {
  final IconData? icono;
  final String? text;
  ButtonContent({this.icono,this.text});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: -10,
          top: -25,
          child: FaIcon(
            icono,
            color: Colors.white.withOpacity(0.3), 
            size: 140,
          )
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: double.infinity,),
            FaIcon(
              icono!,
              color: Colors.white,
              size: 50,
            ),
            Text(text!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25
              ),
            ),
            SizedBox(width: 40,),
            Icon(Icons.arrow_forward_ios,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }
}