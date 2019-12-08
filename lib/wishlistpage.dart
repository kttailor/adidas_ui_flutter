import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 24,
            ),
            child: Text(
              'Wishlist',
              style: TextStyle(fontSize: 40.0),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        Positioned(
          top: 130,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                height: 1.0,
                color: Colors.black,
              ),
              itemCount: 13,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: new ClipRRect(
                              borderRadius: new BorderRadius.circular(8.0),
                              child: new Image.asset(
                                'assets/temp/9.png',
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 2,
                            child: Container(
                              height: 140.0,
                              margin: EdgeInsets.only(left: 2.0, right: 24.0),
                              //color: Colors.red,
                              child: Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                        'PICK-UP SHOOTER HOODIE BUILT WITH EXTRA VENTILATION'),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('\$50.00')),
                                  Positioned(
                                      bottom: -10,
                                      left: 0,
                                      right: 0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          ButtonTheme(
                                            minWidth: 100.0,
                                            height: 25.0,
                                            child: RaisedButton(
                                              color: Colors.black,
                                              onPressed: () {},
                                              child: Text(
                                                'ADD TO CART',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              AntDesign.heart,
                                              size: 18.0,
                                              color: Colors.red,
                                            ),
                                            onPressed: () {
                                              print('up pressed');
                                            },
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 30,
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
