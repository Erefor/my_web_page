import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff22343C),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            WelcomeMsg(),
            TextFields(),
            SingInButton()
          ],
        ),
      ),
    );
  }
}

class WelcomeMsg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Welcome!', style: GoogleFonts.ledger(
          color: Colors.white,
          fontSize: 50
        ),),
        Text('Sign in to continue', style: GoogleFonts.ledger(
          color: Colors.grey,
          fontSize: 35,
          textBaseline: TextBaseline.alphabetic
        ),),
      ],
    );
  }
}

class TextFields extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start,
      children: <Widget>[
        CustomTextField(texto: 'User',icono: Icons.people,colorDeFondoDeIcono: Color(0xff625B39),colorDeIcono: Color(0xffFFC542),),
        CustomTextField(texto: 'Password',icono: Icons.lock_open, colorDeFondoDeIcono: Color(0xff623A42),colorDeIcono: Color(0xffFF575F),),
      ],
    );
  }
}


class CustomTextField extends StatelessWidget {
  CustomTextField({this.icono,this.texto,this.colorDeIcono,this.colorDeFondoDeIcono});
  final IconData? icono;
  final String? texto;
  final Color? colorDeIcono;
  final Color? colorDeFondoDeIcono;
  @override
  Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.symmetric(vertical: 20),
     width: 350,
     child: TextField(
       decoration: InputDecoration(
         prefixIcon: Container(
           child: Icon(icono, color: colorDeIcono,), 
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(10)), 
             color: colorDeFondoDeIcono
          ),
         margin: EdgeInsets.symmetric(horizontal: 5),),
         labelText: texto,
         labelStyle: TextStyle(color: Colors.grey,letterSpacing: 5) 
       ),
     ),
   );
  }
}

class SingInButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 25),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff40DF9F)),
              minimumSize: MaterialStateProperty.all<Size>(Size(250, 50)), 
            ),
            onPressed: (){}, 
            child: Text('Sing In',
              style: GoogleFonts.niramit(
                color: Colors.white,
                fontSize: 25,
                wordSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        TextButton(onPressed: (){}, child: Text('Forgot password?', style: TextStyle(color: Colors.grey),))
      ],
    );
  }
}