import 'package:demo/screens/homeOverviewScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const id = "LoginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool toggleButton = false;
  @override
  Widget build(BuildContext context) {
    final scr_Size = MediaQuery.of(context).size;
    double scr_Height = scr_Size.height;
    double scr_width = scr_Size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    child: Image.asset(
                      'images/1.png',
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Positioned.fill(
                    child: Image.asset(
                      'images/2.png',
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                  Positioned(
                    bottom: scr_Height * 0.07,
                    right: scr_width * 0.20,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (toggleButton == false) {
                            toggleButton = true;
                            Navigator.of(context)
                                .pushReplacementNamed(HomeOverviewScreen.id);
                          } else {
                            toggleButton = false;
                          }
                        });
                      },
                      child: Icon(
                        toggleButton ? Icons.arrow_back : Icons.home,
                        color: Colors.white,
                        size: 33,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //

                        Image.asset(
                          'images/logo.png',
                        ),
                        SizedBox(
                          height: scr_Height * 0.07,
                        ),
                        Text(
                          toggleButton ? "New Registration" : "Login",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: scr_Height * 0.05,
                        ),
                        Row(
                          children: [
                            Container(
                              width: scr_width * 0.80,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 13.0,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff949494),
                                        size: 22.0,
                                      ),
                                      SizedBox(
                                        width: 13.0,
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              // contentPadding: EdgeInsets.only(left)
                                              hintText: 'Username',
                                              hintStyle: TextStyle(
                                                color: Color(0xffB5B5B5),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 0.0,
                                    thickness: 1.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 13.0,
                                      ),
                                      Icon(
                                        Icons.lock,
                                        color: Color(0xff949494),
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                        width: 13.0,
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              // contentPadding: EdgeInsets.only(left)
                                              hintText: 'Password',
                                              hintStyle: TextStyle(
                                                color: Color(0xffB5B5B5),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (toggleButton == true)
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                    ),
                                  if (toggleButton == true)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          width: 13.0,
                                        ),
                                        Icon(
                                          Icons.email,
                                          color: Color(0xff949494),
                                          size: 20.0,
                                        ),
                                        SizedBox(
                                          width: 13.0,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
                                                // contentPadding: EdgeInsets.only(left)
                                                hintText: 'Email ID',
                                                hintStyle: TextStyle(
                                                  color: Color(0xffB5B5B5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: scr_Height * 0.05,
                        ),
                        Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color(0xff949494),
                          ),
                        ),
                        SizedBox(
                          height: scr_Height * 0.05,
                        ),
                        // if (toggleButton == false)
                      ],
                    ),
                  ),
                  Positioned(
                    top: scr_Height * 0.515,
                    right: scr_width * 0.16,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (toggleButton == false) {
                            toggleButton = true;
                          } else {
                            toggleButton = false;
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 23.0,
                        backgroundColor: Color(0xff728BBC),
                        child: Icon(
                          toggleButton ? Icons.done : Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  if (toggleButton == false)
                    Positioned(
                      top: scr_Height * 0.75,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 3),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  toggleButton = true;
                                });
                              },
                              child: Text(
                                'New Register',
                                style: TextStyle(
                                  color: Color(0xffD10071),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (toggleButton == true)
                    Positioned(
                      bottom: scr_Height * 0.75,
                      child: Row(
                        children: [
                          Container(
                            width: scr_width * 0.79,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 3),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40.0),
                                topLeft: Radius.circular(40.0),
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  toggleButton = false;
                                });
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Color(0xffD10071),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
