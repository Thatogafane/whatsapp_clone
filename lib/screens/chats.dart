import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
import 'package:whatsapp_clone/widgets/floatingbutton.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
            child: Card(
              color: kPrimaryColor,
              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text('AH'),
                    ),
                    title: const Text(
                      'Thato Gafane',
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Hi Thato, can we talk',
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButton(
        press: () {},
        child: Icon(Icons.chat_outlined),
      ),
    );
  }
}
