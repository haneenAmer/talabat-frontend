import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView(
        children: [
          Container(
            // alignment: Alignment.bottomLeft,
            //width: 500,
            color: Color(0xffffeee6),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivering to',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18, color: Colors.grey.withOpacity(0.8)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text('Karada Dakhel',
                            style:
                            TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.orange,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hey there !',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text('Log in your creat an accoun for ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            Text('a faster ordering experirnce',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 150,
                        width: 150,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'images/hands.png',
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0xfffd5801),
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),

          /// part 2 of page

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hey, good morning',
              style: TextStyle(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15),
            child: Container(
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Food',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Order your favorite today',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.withOpacity(0.8))),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                      width: 122,
                      height: 80,
                      child: Image(
                        image: AssetImage('images/bur.png'),
                        fit: BoxFit.fill,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          /// part 3 of te page
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Top picks',
              style: TextStyle(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RowsofIcos(
                    Icon(
                      Icons.fact_check,
                      color: Color(
                        0xfffd5801,
                      ),
                      size: 40,
                    ),
                    'Past',
                    'Orders'),
                RowsofIcos(
                    Icon(
                      Icons.pedal_bike,
                      color: Color(
                        0xfffd5801,
                      ),
                      size: 40,
                    ),
                    'Free',
                    'Delivery'),
                RowsofIcos(
                    Icon(
                      Icons.sell,
                      color: Color(
                        0xfffd5801,
                      ),
                      size: 40,
                    ),
                    'Spacial',
                    'Offers'),
                RowsofIcos(
                    Icon(
                      Icons.icecream_rounded,
                      color: Color(
                        0xfffd5801,
                      ),
                      size: 40,
                    ),
                    'Desserts',
                    ''),
                RowsofIcos(
                    Icon(
                      Icons.lunch_dining,
                      color: Color(
                        0xfffd5801,
                      ),
                      size: 40,
                    ),
                    'Burger',
                    'love'),
              ],
            ),
          )
        ],
      ),
    ));
  }
  Padding RowsofIcos(Iconn, String Textt, String Textt2) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 10,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffffeee6)),
                child: Iconn,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    Textt,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    Textt2,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
