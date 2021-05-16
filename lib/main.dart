import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
import 'package:whatsapp_clone/screens/chats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text(
              'WhatsApp',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: kAppBarColor,
            elevation: 0,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.more_vert),
              ),
            ],
            bottom: TabBar(
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              labelColor: kSecondaryColor,
              unselectedLabelColor: kTextColor,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('CHAT'),
                ),
                Tab(
                  child: Text('STATUS'),
                ),
                Tab(
                  child: Text('CALLS'),
                ),
              ],
              indicatorColor: kSecondaryColor,
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera),
              Chat(),
              Text('Status Screen'),
              Text('Call Screen'),
            ],
          ),
        ),
      ),
    );
  }
}
