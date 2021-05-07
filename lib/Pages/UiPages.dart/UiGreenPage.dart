import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final String descrip = 'Aliquip enim minim in veniam duis elit. Aute magna sint nostrud dolore. Occaecat tempor cupidatat irure dolor reprehenderit aute amet aute in pariatur aliquip. Amet aute in pariatur aliquip.';

class UiGreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Stack(
        children: <Widget>[
          Background(),
          Content(),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: double.infinity,),
        Container(
          height: _screenSize.height  *0.6,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('lib/assets/design2-1.PNG'),
              fit: BoxFit.cover,
            )
          ),
        ),
      ],
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomRight: Radius.circular(70), bottomLeft: Radius.circular(70))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: double.infinity,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
            child: FittedBox(
              child: Text('Start with the latest trends + 3D',
                style: GoogleFonts.geo(
                  color: Colors.black,
                  fontSize: 50,
                  wordSpacing: 2
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Text(descrip,
              style: GoogleFonts.niramit(
                color: Colors.grey,
                fontSize: 20,
                wordSpacing: 2,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all<Size>(Size(250, 50)), 
              ),
              onPressed: (){}, 
              child: Text('Start',
                style: GoogleFonts.niramit(
                  color: Colors.white,
                  fontSize: 25,
                  wordSpacing: 2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}