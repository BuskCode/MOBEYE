import 'package:flutter/material.dart';
import 'package:mob_eye/screens/dashboard/pos/barcode_scan.dart';
import 'package:mob_eye/screens/dashboard/pos/cartPage.dart';
import 'package:mob_eye/screens/dashboard/pos/item_list.dart';

class CashRegister extends StatelessWidget {
  /* const */ CashRegister({Key? key}) : super(key: key);
  // brug denne controller til at få hvad brugeren skriver i feltet
  final _textController = TextEditingController();


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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Skriv vare nr.',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      //fjern tekst
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
            MaterialButton(
              onPressed: () {
                //
              },
              color: Colors.blue,
              child: const Text('Tilføj', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              onPressed: () {
                 Navigator.push(
              context, MaterialPageRoute(builder: (context) => BarCodeScan()));
              },
              color: Colors.blue,
              child: const Text('Scan stregkode', style: TextStyle(color: Colors.white),),
            ),
            
          ],
        ),
      ),
    );
  }
}
