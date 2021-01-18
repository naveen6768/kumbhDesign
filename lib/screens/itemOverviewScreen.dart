import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ItemOverviewScreen extends StatefulWidget {
  static const id = "ItemOverviewScreen";

  @override
  _ItemOverviewScreenState createState() => _ItemOverviewScreenState();
}

class _ItemOverviewScreenState extends State<ItemOverviewScreen> {
  int _value = 0;
  int counting = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.pink,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.pink,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/logo.png',
          scale: 1.5,
        ),
        actions: [
          Icon(
            Icons.person,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.shop,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.0,
            width: double.infinity,
            child: Carousel(
              images: [
                AssetImage('images/pd-3.jpg'),
                AssetImage('images/pd-3.jpg'),
                AssetImage("images/pd-3.jpg")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Safe In',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '10 Pads 320mm XXL H. FL .(High Flow)',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Rs. 100/-',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Divider(
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 5.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Qty'),
                            SizedBox(width: 10.0),
                            DropdownButton(
                                value: _value,
                                items: <DropdownMenuItem>[
                                  DropdownMenuItem(
                                    child: Text('good'),
                                    value: 0,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('bad'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('premium'),
                                    value: 2,
                                  ),
                                ],
                                onChanged: (var value) {
                                  setState(() {
                                    _value = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 5.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('${counting.toString()}'),
                            SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  counting++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Icon(
                        Icons.thumb_up_alt_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70.0,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Total \namount',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Rs. 100/-',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24.0,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.pink,
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
