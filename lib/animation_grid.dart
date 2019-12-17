import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimatedGridViewPage extends StatefulWidget {
  @override
  _AnimatedGridViewPagePageState createState() =>
      _AnimatedGridViewPagePageState();
}

class _AnimatedGridViewPagePageState extends State<AnimatedGridViewPage> {
  final controller = ScrollController();

  int animationAngle = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(onScroll);
  }

  onScroll() {
    setState(() {});
  }

  _onStartScroll(ScrollMetrics metrics) {
    setState(() {
      animationAngle = 0;
    });
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    setState(() {
      if (controller.position.userScrollDirection == ScrollDirection.forward) {
        animationAngle = -15;
      } else if (controller.position.userScrollDirection ==
          ScrollDirection.reverse) {
        animationAngle = 15;
      } else {
        animationAngle = 0;
      }
      setState(() {});
    });
  }

  _onEndScroll(ScrollMetrics metrics) {
    setState(() {
      animationAngle = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 110),
            child: Container(
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollStartNotification) {
                    _onStartScroll(scrollNotification.metrics);
                  } else if (scrollNotification is ScrollUpdateNotification) {
                    _onUpdateScroll(scrollNotification.metrics);
                  } else if (scrollNotification is ScrollEndNotification) {
                    _onEndScroll(scrollNotification.metrics);
                  }
                  return false;
                },
                child: GridView.count(
                  controller: controller,
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(100, (index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Container(
                                color: Color(0xFFf4f6f8),
                                child: RotationTransition(
                                  turns: new AlwaysStoppedAnimation(
                                      animationAngle / 360),
                                  child: new Image.asset(
                                    'assets/nike.png',
                                  ),
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'OLYMPIC NIKE',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'NunitoSans',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'AIR FOAMPOSITE ONE ...',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'NunitoSans',
                                      color: Colors.grey),
                                ),
                                Text(
                                  '\$99.9',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 16,
            child: IconButton(
              icon: new Image.asset(
                'assets/line_menu.png',
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 30,
            right: 16,
            child: IconButton(
              icon: new Image.asset(
                'assets/search.png',
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 70, left: 24),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'NIKE JAMES',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            right: -20,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF5466F5),
              ),
              height: 80,
              width: 80,
              child: IconButton(
                icon: Icon(
                  Icons.star,
                  size: 32.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
