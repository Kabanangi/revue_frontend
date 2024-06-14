import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_revue/components/login_component';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: LoginComponent()),
    );
  }
}
