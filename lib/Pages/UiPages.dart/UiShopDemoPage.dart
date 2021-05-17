import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiShopDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 40,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Headphone',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        Text(
          'TMA Wireless',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 35,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              OptionButton(),
              OptionButton(),
            ],
          ),
        )
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Data',
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
