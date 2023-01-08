import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: const Center(
        child: Text('Chat Screen', style: TextStyle(fontSize: 40)),
        // child: Column(
        //   children: <Widget>[
        //     _userId(),
        //     _signOutButton(),
        //   ],
        // ),
      ),
    );
  }
}