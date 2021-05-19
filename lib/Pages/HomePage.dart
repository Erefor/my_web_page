import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_page/Widgets/Buttons.dart';
import 'package:my_web_page/Widgets/CustomCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff153D75),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
            ),
            BounceInUp(
              delay: Duration(seconds: 2),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('lib/assets/yo.jpeg'),
              ),
            ),
            FadeInLeft(
              delay: Duration(seconds: 3),
              child: Text(
                'José Salvador',
                style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            FadeInLeft(
              delay: Duration(seconds: 4),
              child: Text('Flutter Developer',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 30.0,
                  )),
            ),
            SizedBox(
              height: 20,
              width: 120,
              child: ElasticIn(
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ),
            FadeInRight(
                delay: Duration(seconds: 5),
                child: CustomCard(
                  '+55 29 61 45 55 / México',
                  Icons.phone,
                )),
            FadeInRight(
                delay: Duration(seconds: 6),
                child: CustomCard(
                    'perezg.josesal@gmail.com', Icons.email_outlined)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BounceInDown(
                    delay: Duration(seconds: 7),
                    child: OtroBoton(
                      text: 'Ui',
                      route: 'uiPages',
                    )),
                BounceInDown(
                    delay: Duration(seconds: 7),
                    child: OtroBoton(
                      text: 'Animations',
                    )),
                BounceInDown(
                    delay: Duration(seconds: 7),
                    child: OtroBoton(
                      text: 'About me',
                      route: 'aboutMePage',
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
