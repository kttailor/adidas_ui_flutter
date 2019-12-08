import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:adidas_flutter/signuppage.dart';

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty' : null;
  }
}

class PasswordFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Password can\'t be empty' : null;
  }
}

class LoginViewPage extends StatefulWidget {
  @override
  _LoginViewPageState createState() => _LoginViewPageState();
}

class _LoginViewPageState extends State<LoginViewPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var pressed = false;
  bool _obscureTextLogin = true;
  bool _tapInProgress = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/adidas_nav.png',
                            height: 100.0, width: 100.0, fit: BoxFit.contain),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 24, right: 24, top: 30.0),
                        child: TextFormField(
                          controller: emailController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          validator: EmailFieldValidator.validate,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusColor: Colors.black,
                            hintText: 'Email',
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            errorStyle: TextStyle(
                              color: Colors.red,
                              wordSpacing: 5.0,
                            ),
                            //errorText: 'Email is invalid'
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: TextFormField(
                          controller: passwordController,
                          cursorColor: Colors.black,
                          validator: PasswordFieldValidator.validate,
                          obscureText: _obscureTextLogin,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                // Change the color of the container beneath
                                if (this.mounted) {
                                  setState(() {
                                    _obscureTextLogin = !_obscureTextLogin;
                                    if (_obscureTextLogin) {
                                      print('if eye');
                                      _tapInProgress = true;
                                    } else {
                                      print('else eye');
                                      _tapInProgress = false;
                                    }
                                  });
                                }
                              },
                              child: new Container(
                                color: Colors.transparent,
                                width: 40.0,
                                height: 40.0,
                                margin: new EdgeInsets.all(1.0),
                                child: Icon(
                                  _tapInProgress
                                      ? Ionicons.ios_eye_off
                                      : Ionicons.ios_eye,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusColor: Colors.black,
                            hintText: 'Password',
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            errorStyle: TextStyle(
                              color: Colors.red,
                              wordSpacing: 5.0,
                            ),
                            //errorText: 'Email is invalid'
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 4, right: 4, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    pressed =
                                        !pressed; // update the state of the class to show color change
                                  });
                                },
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    new Icon(pressed
                                        ? Icons.check_box
                                        : Icons.check_box_outline_blank),
                                        SizedBox(width: 10.0,),
                                    new Text('Remember me'),
                                  ],
                                ),
                              ),
                              FlatButton(
                                onPressed: () {
                                  print('Forgot Password press');
                                },
                                child: new Text('Forgot Password?'),
                              )
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24, top: 20),
                        child: Container(
                            width: double.infinity,
                            child: ButtonTheme(
                                minWidth: 200.0,
                                height: 55.0,
                                child: RaisedButton(
                                  color: Colors.black,
                                  onPressed: () {},
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24, top: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 0.0, right: 10.0),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 36,
                                  )),
                            ),
                            Text("OR"),
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 0.0),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 36,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 180.0,
                              height: 55.0,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(4.0),
                                  side: BorderSide(color: Colors.red),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Sign in with Google',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 180.0,
                              height: 55.0,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(4.0),
                                  side: BorderSide(color: Colors.blueAccent),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Sign in with Facebook',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 24, right: 24, top: 30),
                          child: FlatButton(
                            onPressed: () {
                              var root = MaterialPageRoute(
                                  builder: (context) => new SignUpViewPage());
                              Navigator.push(context, root);
                            },
                            child: new RichText(
                              text: new TextSpan(
                                // Note: Styles for TextSpans must be explicitly defined.
                                // Child text spans will inherit styles from parent
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  new TextSpan(text: 'Don\'t have an account?'),
                                  new TextSpan(
                                      text: ' Sign Up',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              )),
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
