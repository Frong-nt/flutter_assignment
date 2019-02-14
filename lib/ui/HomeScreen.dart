import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  Myform createState() {
    return Myform();
  }
}

class Myform extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/cat.jpg",
                height: 200,
              ),
              margin: EdgeInsets.fromLTRB(50, 50, 50, 0),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "User Id",
                  hintText: "User Id",
                  icon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => print(value),
                validator: (value) {
                  if (value.isEmpty) {
                    return "กรุณาระบุ user";
                  }
                },
              ),
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "password",
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                onSaved: (value) => print(value),
                validator: (value) {
                  if (value.isEmpty) {
                    return "กรุณาระบุ password";
                  }
                },
              ),
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            ),
            Container(
              child: RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  _formKey.currentState.validate();
                },
              ),
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    child: FlatButton(
                    child: Text("Register New Account",
                    style: TextStyle(color: Colors.green),
                    textDirection: TextDirection.ltr),
                    onPressed: () {},
                    ),
            ))
          ],
        ),
      ),
    );
  }
}
