import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: (AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffffeee6),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xffffeee6),
                    backgroundImage: AssetImage('images/H.png'),
                  ),
                  // backgroundImage:AssetImage('images/H.png') ,
                ),
                SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Guest',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 9,
                          backgroundImage: AssetImage('images/iraq.png'),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Iraq',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.settings_outlined,
                  size: 30,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          restofpage(
            Icon(
              Icons.receipt_long,
              size: 30,
            ),
              'Your orders'
          ),
          SizedBox(
            height: 8,
          ),
          restofpage(
            Icon(
              Icons.sell_outlined,
              size: 30,
            ),
              'Offers'
          ), SizedBox(
            height: 8,
          ),
          restofpage(
            Icon(
              Icons.notifications_none,
              size: 30,
            ),
              'Notifications'
          ),SizedBox(
            height: 8,
          ),
          restofpage(
            Icon(
              Icons.help_center_outlined,
              size: 30,
            ),
              'Get help'
          ),SizedBox(
            height: 8,
          ),
          restofpage(
            Icon(
              Icons.info_outline,
              size: 30,
            ),
              'About app'
          ),
        ],
      ),
    ));
  }

  Padding restofpage(Icon , String word) {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon,
          SizedBox(
            width: 12,
          ),
          Text(
            word,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
