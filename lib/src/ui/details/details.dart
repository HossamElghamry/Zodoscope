import 'package:flutter/material.dart';
import 'package:horoscopes/src/common/signs.dart';

class DetailPage extends StatelessWidget {
  final ZodiacSign sign;

  DetailPage({Key key, this.sign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151846),
      body: Container(
        child: Hero(
          tag: sign.name,
          child: Container(
            height: 275,
            decoration: BoxDecoration(
                color: sign.signColor,
                borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(MediaQuery.of(context).size.width / 2),
                    bottomRight: Radius.circular(
                        MediaQuery.of(context).size.width / 2))),
            child: Center(
              child: Image.asset(
                sign.logoPath,
                width: 200,
                height: 200,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
