import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.57,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    height: 1.0,
                    color: Colors.black,
                  ),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 2.0, left: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'TREFOIL HOODIE',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                icon: Icon(
                                  Ionicons.md_trash,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  print('Trash pressed');
                                },
                              )
                            ],
                          ),
                        ),
                        Divider(height: 1.0),
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
                                  height: 120.0,
                                  margin:
                                      EdgeInsets.only(left: 2.0, right: 24.0),
                                  //color: Colors.red,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text('Price'),
                                            Text('\$70.00')
                                          ],
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text('Total price'),
                                              Text('\$140.00')
                                            ],
                                          )),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Quantity'),
                                      ),
                                      Positioned(
                                          right: -15,
                                          top: 35,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              IconButton(
                                                icon: Icon(
                                                  AntDesign.down_square_o,
                                                  size: 18.0,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {
                                                  print('Down pressed');
                                                },
                                              ),
                                              Text('2'),
                                              IconButton(
                                                icon: Icon(
                                                  AntDesign.up_square_o,
                                                  size: 18.0,
                                                  color: Colors.black,
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
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.23,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text('Subtotal'), Text('\$260.00')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text('Shipping'), Text('\$9.99')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text('Total'), Text('\$269.99')],
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          color: Colors.black,
                          child: Text(
                            'Check Out',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            print('checkout press');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
