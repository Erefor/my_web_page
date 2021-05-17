import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const String imageUrl = 'https://www.skullcandy.mx/storage/products/jjqy5FjDWxCo7rMXYLKjLJcTHpx2HFfod6iykFLt.png';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15,),
            Header(),
            SizedBox(height: 15,),
            PageContent(),
          ],
        ),
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
      ),
      child: SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          direction: Axis.horizontal,
          spacing: 10,
          children: <Widget>[
            Article(),
            Article(),
            Article(),
            Article(),
            Article(),
            Article(),
            Article(),
          ],
        ),
      ),
    );
  }
}

class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: 220,
          width: 145,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeInImage(placeholder: AssetImage('lib/assets/loa.gif'), image: NetworkImage(imageUrl)),
                Text('TMA-2 Wireless',style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Text('USD 350',style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.yellow, size: 15,),
                          Text('4.5', style: TextStyle(
                            fontSize: 10
                          ),)
                        ],
                      ),
                    ),
                    Text('86 reviews', style: TextStyle(
                      fontSize: 10
                    ),),
                    Icon(Icons.menu_open_outlined,size:15)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Headphone',
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 25,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'TMA Wireless',
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 35,
            ),
          ),
        ),
        SizedBox(height: 25,),
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                OptionButton(text: 'Filter',icono: Icons.filter_tilt_shift,),
                SizedBox(width: 10,),
                OptionButton(text: 'Popularity',icono: Icons.format_align_right_rounded,),
                SizedBox(width: 10,),
                OptionButton(text: 'Newest',icono: Icons.web,),
                SizedBox(width: 10,),
                OptionButton(text: 'Most Exp',icono: Icons.radio_button_checked_sharp,),
                SizedBox(width: 10,),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icono;

  const OptionButton({this.text = '', this.icono = Icons.video_settings_rounded});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(icono, color: Colors.black,),
          SizedBox(width: 10,),
          Text(
            text,
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)),

      ),
    );
  }
}
