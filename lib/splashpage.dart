import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talabattask/NavBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// creat new timer
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), timerofsplash);
  }
  ///creat class to move to the home page
  void timerofsplash(){
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context)=>const NavBarPage()),
        (Route<dynamic>route)=> false,);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child:Scaffold(
          backgroundColor: Color(0xffff5a00),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Center(
              child: Container(
                width: 322,height: 120,
                decoration: BoxDecoration(
                  color: Color(0xffff5a00),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: AssetImage('images/talaa.png'))
                ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
