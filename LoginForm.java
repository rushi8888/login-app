import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: LoginForm(),
  ));

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
    );
  }
}
