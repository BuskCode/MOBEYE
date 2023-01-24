import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mob_eye/screens/dashboard/chat.dart';
import 'package:mob_eye/screens/dashboard/pos/cartPage.dart';
import 'package:mob_eye/screens/dashboard/pos/item_list.dart';
import 'package:mob_eye/screens/dashboard/pos/product_list.dart';
import 'package:mob_eye/screens/dashboard/statistics.dart';
import 'package:mob_eye/screens/home_page.dart';
import 'package:mob_eye/screens/profile/customer_listView.dart';

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('lib/assets/images/Chat.jpg',
                                    width: 64.0),
                                SizedBox(height: 10.0),
                                /* Text('',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0)), */
                                SizedBox(
                                  height: 0.0,
                                ),
                                Text(
                                  '4 online',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () => Get.to(() => const Chat()),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: const StadiumBorder()),
                                    child: const Text(
                                      'Kundeservice',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'lib/assets/images/Horizon_logo.png',
                                  width: 150.0,
                                  height: 90,
                                ),
                                SizedBox(height: 10.0),
                                /* Text('',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0)), */
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: const StadiumBorder()),
                                    child: const Text(
                                      'HORIZON',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('lib/assets/images/Stats.jpg',
                                    width: 120.0),
                                SizedBox(height: 10.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () =>
                                        Get.to(() => const Statistics()),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: const StadiumBorder()),
                                    child: const Text(
                                      'Statestik',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('lib/assets/images/Man.png',
                                    width: 64.0),
                                SizedBox(height: 10.0),
                                Text('',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0)),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () =>
                                        Get.to(() => const CustomerListView()),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: const StadiumBorder()),
                                    child: const Text(
                                      'Kunder',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'lib/assets/images/Briller_il.jpg',
                                  width: 150.0,
                                  height: 90,
                                ),
                                SizedBox(height: 10.0),
                                /*  Text('Produkter',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0)), */
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () =>
                                        Get.to(() => const ProductList()),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: const StadiumBorder()),
                                    child: const Text(
                                      'Tilføj Produkt',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
