import 'package:firebase_auth/firebase_auth.dart';
import 'package:mob_eye/features/authentication/auth.dart';
import 'package:mob_eye/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:mob_eye/screens/login/login_register_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
