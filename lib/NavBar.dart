import 'package:flutter/material.dart';
import 'package:talabattask/Account.dart';
import 'package:talabattask/Search.dart';
import 'package:talabattask/homee.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

int _currentindex = 0;

final tabs = [
  Scaffold(
    body: page(),
  ),
  Scaffold(
    body: Search(),
  ),
  Scaffold(
    body:Account(),
  ),
];

class _NavBarPageState extends State<NavBarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xfffd5801),
        iconSize: 40,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              //Image(image: AssetImage('images/t.png'),width: 27,),
              label: 'Home',

             ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account',
              backgroundColor: Colors.orange),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      backgroundColor: Colors.white,
      body: tabs[_currentindex]
    ));
  }


}
