import 'package:demo/screens/itemOverviewScreen.dart';
import 'package:flutter/material.dart';

class HomeOverviewScreen extends StatelessWidget {
  static const id = "HomeOverviewScreen";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.27,
              width: double.infinity,
              child: Image.asset(
                'images/Products-banner.png',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Products',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: height * 0.60,
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ItemOverviewScreen.id);
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Row(
                        children: [
                          Container(
                            width: 170.0,
                            height: height * 0.18,
                            child: Image.asset(
                              'images/pd-3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Safe In',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '10 Pads 320mm XXL',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rs. 100/-',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff949494),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ItemOverviewScreen.id);
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Row(
                        children: [
                          Container(
                            width: 170.0,
                            height: height * 0.18,
                            child: Image.asset(
                              'images/pd-3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Safe In',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '10 Pads 320mm XXL',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rs. 100/-',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff949494),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ItemOverviewScreen.id);
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Row(
                        children: [
                          Container(
                            width: 170.0,
                            height: height * 0.18,
                            child: Image.asset(
                              'images/pd-3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Safe In',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '10 Pads 320mm XXL',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rs. 100/-',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff949494),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ItemOverviewScreen.id);
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Row(
                        children: [
                          Container(
                            width: 170.0,
                            height: height * 0.18,
                            child: Image.asset(
                              'images/pd-3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Safe In',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '10 Pads 320mm XXL',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rs. 100/-',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff949494),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ItemOverviewScreen.id);
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Row(
                        children: [
                          Container(
                            width: 170.0,
                            height: height * 0.18,
                            child: Image.asset(
                              'images/pd-3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Safe In',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '10 Pads 320mm XXL',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rs. 100/-',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff949494),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ItemOverviewScreen.id);
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Row(
                        children: [
                          Container(
                            width: 170.0,
                            height: height * 0.18,
                            child: Image.asset(
                              'images/pd-3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Safe In',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '10 Pads 320mm XXL',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rs. 100/-',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff949494),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
