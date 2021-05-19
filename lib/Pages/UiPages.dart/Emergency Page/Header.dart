import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff526BF6),
              Color(0xff67ACf2),
            ]),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -40,
              left: -40,
              child: FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.white.withOpacity(0.2),
                size: 200,
              )),
          _Content()
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: double.infinity,
        ),
        Text('You have requested:',
            style: TextStyle(color: Colors.white, fontSize: 25)),
        SizedBox(
          height: 30,
        ),
        Text(
          'Medical assistance',
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
        FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          size: 90,
        )
      ],
    );
  }
}
