import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  String username;
  String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.only(top: 70),
          child: ListView(
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              Image.asset(
                "resources/Tulips.jpg",
                height: 250,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "User Id",
                  hintText: "please input your Id",
                  icon: Icon(Icons.person),
                ),
                onSaved: (value) {
                  username = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "please input your password",
                  icon: Icon(Icons.lock),
                ),
                onSaved: (value) {
                  password = value;
                },
                obscureText: true,
              ),
              RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  _formKey.currentState.save();
                  if (username == "admin" && password == "admin") {
                    Navigator.pushNamed(context, "/home_page");
                  } else if (username == "" || password == "") {
                    return showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Alert"),
                            content:
                                const Text("กรุณาระบุ username or password"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  } else {
                    return showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Alert"),
                          content:
                              const Text("username or password ไม่ถูกต้อง"),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
              FlatButton(
                child: SizedBox(
                    width: double.infinity,
                    child: Text("Register New Account",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.blue))),
                onPressed: () {
                  Navigator.pushNamed(context, "/register_page");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
