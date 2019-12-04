import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey=new GlobalKey<FormState>();

  String username;
  String email;
  int mobileNumber;
  String password;

  void validateAndSave(){
    final form=formKey.currentState;
    if(form.validate()){
      form.save();
      print('form is valid.Email-id: $email,password:$password,username:$username,mobile-number:$mobileNumber');
    }else{
      print('form is invalid.Email-id: $email,password:$password,username:$username,mobile-number:$mobileNumber');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child:new Form(key: formKey, child:new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new TextFormField(
              decoration: new InputDecoration(labelText: 'username'),
                validator: (value) => value.isEmpty ? 'username can\'t be empty' : null,
              onSaved: (value) => _username = value,

            ),
            new TextFormField(
              decoration: new InputDecoration(labelText: 'Email-id'),
              validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
              onSaved: (value)=> _Email-id = value,
            ),
            new TextFormField(
              decoration: new InputDecoration(labelText: 'mobile-number'),
                validator: (value) => value.isEmpty ? 'mobile-number can\'t be empty' : null,
              onSaved: (value) => _mobile-number = value,
            ),
            new TextFormField(
              decoration: new InputDecoration(labelText: 'password'),
              obscureText: true,
                validator: (value) => value.isEmpty ? 'password can\'t be empty' : null,
              onSaved: (value)=> _password = value,
            ),
            new RaisedButton(child: new Text('Login',style: new TextStyle(fontSize: 20.0)),
              onPressed: validateAndSave,
            )

          ],
        )),
      ),
    );
  }
}


