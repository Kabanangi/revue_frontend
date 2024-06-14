import 'package:flutter/material.dart';
import 'package:flutter_revue/components/post_item.dart';

class AcceuilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: serverUser(),
    ));
  }

  List<Widget> serverUser() {
    List<Widget> users = [];
    for (var i = 0; i < 100; i++) {
      users.add(PostItem());
    }
    return users;
  }
}
