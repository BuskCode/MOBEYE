import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mob_eye/screens/dashboard/pos/barcode_scan.dart';
import 'package:mob_eye/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized(); //Vigtigt for at appen virker
  await Firebase.initializeApp(); // Vigtigt for at appen virker
  runApp(const GetMaterialApp(home: WidgetTree()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mob-Eye',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetTree(),
      
    );
  }
}
