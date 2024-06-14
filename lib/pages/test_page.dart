import 'package:flutter/material.dart';
import 'package:flutter_revue/components/publish_component.dart';
import 'package:flutter_revue/pages/acceuil_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int currentState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SCIENTIA"),
        centerTitle: true,
        actions: [
          Image.asset(
            "assets/images/science.png",
            width: 40,
            height: 40,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
              style: TextButton.styleFrom(foregroundColor: Colors.blue),
              child: Text("deconnection"))
        ],
      ),
      body: pages[currentState],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add")
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentState,
        onTap: (index) {
          setState(() {
            currentState = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  final pages = [
    AcceuilPage(),
    PublishComponent(),
  ];
}
