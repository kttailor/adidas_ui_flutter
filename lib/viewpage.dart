import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AppViewPage extends StatefulWidget {
  @override
  _AppViewPageState createState() => _AppViewPageState();
}

class _AppViewPageState extends State<AppViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Product'),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      SimpleLineIcons.grid,
                      size: 24.0,
                      color: Colors.black38,
                    ),
                    onPressed: () {
                      print('up pressed');
                    },
                  ),
                  Text(
                    '|',
                    style: TextStyle(fontSize: 28.0, color: Colors.grey),
                  ),
                  IconButton(
                    icon: Icon(
                      SimpleLineIcons.menu,
                      size: 24.0,
                      color: Colors.black38,
                    ),
                    onPressed: () {
                      print('up pressed');
                    },
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: FlatButton(
                  onPressed: () {
                    print('Filter pressed');
                  },
                  child: Text('FILTER'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: new Image.asset(
              'assets/temp/photo.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
