import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:adidas_flutter/loginpage.dart';
import 'package:adidas_flutter/wishlistpage.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Account'),
        ),
        body: ListView(
          children: <Widget>[
            InkWell(
              onTap: () async {
                var root = MaterialPageRoute(
                    builder: (context) => new LoginViewPage());
                final result = await Navigator.push(context, root);
                print(result);
                if (result != null) {
                  setState(() {
                    print('Refresh screen after login success');
                  });
                }
              },
              child: Container(
                  height: 80,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hi, Guest',
                          style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Colors.black),
                        ),
                        Text('Login/Register')
                      ],
                    ),
                  )),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'My Orders',
                    style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Wishlist',
                    style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    var root = MaterialPageRoute(
                        builder: (context) => new WishListPage());
                    Navigator.push(context, root);
                  },
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Others',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Help Centre',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Shipping Policy',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Rate App',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    MaterialCommunityIcons.chevron_right,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ));
  }
}
