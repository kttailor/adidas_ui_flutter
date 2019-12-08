import 'package:flutter/material.dart';
import 'package:adidas_flutter/homepage.dart';
import 'package:adidas_flutter/viewpage.dart';
import 'package:adidas_flutter/cartpage.dart';
import 'package:adidas_flutter/accountpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito Sans',
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
          title: TextStyle(fontSize: 24.0, color: Colors.black),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTabIndex = 0;
  final List<Widget> _children = [
    AppHomePage(),
    AppViewPage(),
    CartPage(),
    AccountPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _children[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: currentTabIndex, // new
        items: [
          new BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset(
              'assets/home.png',
              color: Colors.grey,
            ),
            activeIcon: new Image.asset(
              'assets/home.png',
              color: Colors.black,
            ),
            title: new Text(""),
          ),
          new BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset(
              'assets/view.png',
              color: Colors.grey,
            ),
            activeIcon: new Image.asset(
              'assets/view.png',
              color: Colors.black,
            ),
            title: new Text(""),
          ),
          new BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset(
              'assets/cart.png',
              color: Colors.grey,
            ),
            activeIcon: new Image.asset(
              'assets/cart.png',
              color: Colors.black,
            ),
            title: new Text(""),
          ),
          new BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset(
              'assets/user.png',
              color: Colors.grey,
            ),
            activeIcon: new Image.asset(
              'assets/user.png',
              color: Colors.black,
            ),
            title: new Text(""),
          )
        ],
      ),
    );
  }
}
