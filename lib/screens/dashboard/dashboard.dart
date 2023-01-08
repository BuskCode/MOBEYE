import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mob_eye/screens/dashboard/pos/cartPage.dart';
import 'package:mob_eye/screens/dashboard/pos/item_list.dart';
import 'package:mob_eye/screens/home_page.dart';

import '../../features/authentication/auth.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _signOutButton() {
    return ElevatedButton(onPressed: signOut, child: const Text('Log ud'));
  }
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Logget på som: '),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                }),
                child: Text('Indkøbskurv')),
            ElevatedButton(onPressed: (() {}), child: Text('Log ud'))
          ],
        ),
      ),
    );
  }
}
