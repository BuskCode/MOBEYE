import 'package:flutter/material.dart';
import 'package:mob_eye/screens/dashboard/pos/cartPage.dart';
import 'package:mob_eye/screens/dashboard/pos/item_list.dart';

class CashRegister extends StatelessWidget {
  const CashRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
    );
  }
}
