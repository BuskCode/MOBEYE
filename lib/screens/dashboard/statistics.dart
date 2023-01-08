import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: const Center(
        child: Text('Statistikker Screen', style: TextStyle(fontSize: 40)),
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