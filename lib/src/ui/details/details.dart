import 'package:flutter/material.dart';
import 'package:horoscopes/src/common/signs.dart';

class DetailPage extends StatefulWidget {
  final ZodiacSign sign;

  DetailPage({Key key, this.sign}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  AnimationController _controller;
  final List<String> timeSpans = ["Today", "Week", "Month", "Year"];
  String selectedSpan = "Today";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151846),
      body: Container(
        child: Stack(
          children: <Widget>[
            Hero(
              tag: widget.sign.name,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: widget.sign.signColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(MediaQuery.of(context).size.width / 2),
                    bottomRight:
                        Radius.circular(MediaQuery.of(context).size.width / 2),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    widget.sign.logoPath,
                    width: 200,
                    height: 200,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(timeSpans.length, (int index) {
          Widget child = Container(
            height: 80.0,
            width: 60.0,
            alignment: FractionalOffset.topCenter,
            child: ScaleTransition(
              scale: CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  0.0,
                  1.0,
                  curve: Curves.easeOutCubic,
                ),
              ),
              child: FloatingActionButton(
                heroTag: null,
                shape: StadiumBorder(),
                backgroundColor: widget.sign.getColor,
                child: Text(
                  timeSpans[index],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  selectedSpan = timeSpans[index];
                  if (_controller.isDismissed) {
                    _controller.forward();
                  } else {
                    _controller.reverse();
                  }
                },
              ),
            ),
          );
          return child;
        }).toList()
          ..add(
            FloatingActionButton(
              heroTag: null,
              backgroundColor: widget.sign.getColor,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget child) {
                  return Opacity(
                    opacity: 1 - _controller.value,
                    child: Text(
                      selectedSpan,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
              onPressed: () {
                if (_controller.isDismissed) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
              },
            ),
          ),
      ),
    );
  }
}
