import 'package:flutter/material.dart';
import 'package:flutter_revue/components/creation_component.dart';
import 'package:flutter_revue/pages/login_page.dart';
import 'package:flutter_revue/pages/test_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/test": (context) => TestPage(),
        "/creation": (context) => CreationCompte(),
      },
    );
  }
}
