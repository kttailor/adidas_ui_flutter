import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:adidas_flutter/read_more_text.dart';

class ProductDetailViewPage extends StatefulWidget {
  @override
  _ProductDetailViewPageState createState() => _ProductDetailViewPageState();
}

class _ProductDetailViewPageState extends State<ProductDetailViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    color: Color(0xFFf0eef3),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.48,
                    child: Stack(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Carousel(
                          boxFit: BoxFit.contain,
                          autoplay: false,
                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: Duration(milliseconds: 1000),
                          dotIncreasedColor: Colors.black,
                          dotColor: Colors.grey,
                          dotIncreaseSize: 1.2,
                          dotSize: 9.0,
                          dotBgColor: Colors.transparent,
                          borderRadius: true,
                          dotPosition: DotPosition.bottomLeft,
                          dotVerticalPadding: 10.0,
                          showIndicator: true,
                          indicatorBgPadding: 5.0,
                          images: [
                            ExactAssetImage("assets/temp/product/1.png"),
                            ExactAssetImage("assets/temp/product/1.png"),
                            ExactAssetImage("assets/temp/product/1.png"),
                            ExactAssetImage("assets/temp/product/1.png"),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 4,
                          right: 16,
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(24)),
                            child: Center(
                                child: IconButton(
                              icon: Icon(
                                Ionicons.ios_heart_empty,
                                size: 32.0,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            )),
                          )),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'YUNG-1 SHOES',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$120.00',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NunitoSans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRatingChanged: (v) {
                              //rating = v;
                              setState(() {});
                            },
                            starCount: 5,
                            rating: 4,
                            size: 20.0,
                            color: Color(0xFFF1B11B),
                            borderColor: Color(0xFFF1B11B),
                            spacing: 0.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              ExactAssetImage('assets/temp/product/user1.jpg'),
                          minRadius: 20,
                          maxRadius: 20,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              ExactAssetImage('assets/temp/product/user2.png'),
                          minRadius: 20,
                          maxRadius: 20,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              ExactAssetImage('assets/temp/product/user3.png'),
                          minRadius: 20,
                          maxRadius: 20,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '+40 reviewed this',
                          style: TextStyle(color: Color(0xFFabb4bd)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ReadMoreText(
                      'MESH SHOES WITH A CHUNKY, RETRO RUNNER SHAPE AND EMBROIDERED TONGUE DETAILS.Reimagining the late \'90s-era adidas Falcon Dorf, the Yung-1 offers an authentic, creative take on retro nostalgia. This version echoes true \'90s style with a layered look.',
                      trimLines: 2,
                      colorClickableText: Colors.grey,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '...Read more',
                      trimExpandedText: ' Less',
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          width: 35.0,
                          height: 35.0,
                          child: Center(
                            child: Text('1'),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new Container(
                          width: 35.0,
                          height: 35.0,
                          child: Center(
                            child: Text('2'),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new Container(
                          width: 35.0,
                          height: 35.0,
                          child: Center(
                            child: Text('3'),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new Container(
                          width: 35.0,
                          height: 35.0,
                          child: Center(
                            child: Text('5'),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new Container(
                          width: 35.0,
                          height: 35.0,
                          child: Center(
                            child: Text('5.5'),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new Container(
                          width: 35.0,
                          height: 35.0,
                          child: Center(
                            child: Text('6'),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                            border: new Border.all(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Ionicons.ios_square,
                                  size: 32.0,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  print('Down pressed');
                                },
                              ),
                              Text('Color', style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 70.0,),
                              IconButton(
                                icon: Icon(
                                  AntDesign.down,
                                  size: 14.0,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  print('up pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                AntDesign.down_square_o,
                                size: 24.0,
                                color: Colors.black38,
                              ),
                              onPressed: () {
                                print('Down pressed');
                              },
                            ),
                            Text('1', style: TextStyle(fontSize: 20.0),),
                            IconButton(
                              icon: Icon(
                                AntDesign.up_square_o,
                                size: 24.0,
                                color: Colors.black38,
                              ),
                              onPressed: () {
                                print('up pressed');
                              },
                            ),
                          ],
                        )
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
                          'YOU MAY ALSO LIKE',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold),
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
                          return Padding(
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
                                            bottomRight: Radius.circular(4.0))),
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
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 24,
          left: 16,
          child: IconButton(
            icon: Icon(
              Ionicons.ios_arrow_round_back,
              size: 32.0,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
      ],
    ));
  }
}
