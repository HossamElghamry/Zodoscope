import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:horoscopes/src/common/signs.dart';
import 'package:horoscopes/src/ui/details/details.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  SwiperController viewController = SwiperController();
  String currentSign = "Aquarius";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ZODOSCOPE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Augustus',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF151846),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 400,
              child: Center(
                child: Swiper(
                  controller: viewController,
                  curve: Curves.decelerate,
                  onIndexChanged: (index) => {
                        setState(
                          () {
                            currentSign = signs[index].name;
                          },
                        )
                      },
                  itemBuilder: (BuildContext context, int index) {
                    return HoroscopeCard(
                      sign: signs[index],
                    );
                  },
                  itemCount: 12,
                  itemWidth: 300.0,
                  itemHeight: 450.0,
                  layout: SwiperLayout.TINDER,
                ),
              ),
            ),
            Text(
              currentSign,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Augustus',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HoroscopeCard extends StatelessWidget {
  final ZodiacSign sign;

  HoroscopeCard({Key key, this.sign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
                  sign: sign,
                ),
          ),
        );
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Hero(
              tag: sign.name,
              child: Image.asset(sign.cardPath),
            ),
          ],
        ),
      ),
    );
  }
}
