import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:adidas_flutter/productdetailpage.dart';

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 30,
          left: 16,
          child: IconButton(
            icon: new Image.asset(
              'assets/list.png',
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
          padding: EdgeInsets.only(top: 70),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/adidas_nav.png', fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 130,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: Carousel(
                      boxFit: BoxFit.cover,
                      autoplay: false,
                      animationCurve: Curves.fastOutSlowIn,
                      animationDuration: Duration(milliseconds: 1000),
                      dotIncreasedColor: Color(0xFF1E71B8),
                      dotIncreaseSize: 1.2,
                      dotSize: 9.0,
                      dotBgColor: Colors.transparent,
                      dotPosition: DotPosition.bottomCenter,
                      dotVerticalPadding: 10.0,
                      showIndicator: true,
                      indicatorBgPadding: 7.0,
                      images: [
                        // NetworkImage(
                        // 'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                        ExactAssetImage("assets/temp/photo.png"),
                        ExactAssetImage("assets/temp/photo.png"),
                        ExactAssetImage("assets/temp/photo.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See More >',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                            fontFamily: 'Roboto-Medium',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child: Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Stack(
                              children: <Widget>[
                                new Image.asset(
                                  'assets/temp/man.png',
                                ),
                                Positioned(
                                  bottom: 12.0,
                                  left: 0,
                                  right: 0,
                                  child: Text(
                                    'MEN',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'New Arrivals',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See More >',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                            fontFamily: 'Roboto-Medium',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child: Container(
                      height: 250.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              var root = MaterialPageRoute(
                                  builder: (context) =>
                                      new ProductDetailViewPage());
                              Navigator.push(context, root);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Stack(
                                children: <Widget>[
                                  new Image.asset(
                                    'assets/temp/9.png',
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                              bottomLeft: Radius.circular(4.0),
                                              bottomRight:
                                                  Radius.circular(4.0))),
                                      width: 45,
                                      height: 18,
                                      child: Text(
                                        'New',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    right: -12,
                                    child: IconButton(
                                      iconSize: 32,
                                      icon: new Image.asset(
                                        'assets/favorite_empty.png',
                                        color: Colors.black,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 14,
                                    left: 0,
                                    right: 0,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'POD-S3.1 SHOES',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'NunitoSans',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            onRatingChanged: (v) {
                                              //rating = v;
                                              setState(() {});
                                            },
                                            starCount: 5,
                                            rating: 5,
                                            size: 20.0,
                                            color: Color(0xFFF1B11B),
                                            borderColor: Color(0xFFF1B11B),
                                            spacing: 0.0),
                                        Text(
                                          '\$100',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'New Arrivals',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See More >',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                            fontFamily: 'Roboto-Medium',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child: Container(
                      height: 250.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              var root = MaterialPageRoute(
                                  builder: (context) =>
                                      new ProductDetailViewPage());
                              Navigator.push(context, root);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Stack(
                                children: <Widget>[
                                  new Image.asset(
                                    'assets/temp/9.png',
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                              bottomLeft: Radius.circular(4.0),
                                              bottomRight:
                                                  Radius.circular(4.0))),
                                      width: 45,
                                      height: 18,
                                      child: Text(
                                        'New',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    right: -12,
                                    child: IconButton(
                                      iconSize: 32,
                                      icon: new Image.asset(
                                        'assets/favorite_empty.png',
                                        color: Colors.black,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 14,
                                    left: 0,
                                    right: 0,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'POD-S3.1 SHOES',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'NunitoSans',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            onRatingChanged: (v) {
                                              //rating = v;
                                              setState(() {});
                                            },
                                            starCount: 5,
                                            rating: 5,
                                            size: 20.0,
                                            color: Color(0xFFF1B11B),
                                            borderColor: Color(0xFFF1B11B),
                                            spacing: 0.0),
                                        Text(
                                          '\$100',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 220.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
