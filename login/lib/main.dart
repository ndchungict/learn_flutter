import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Login Page Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "ndchungict@gmail.com.vn",
                  labelText: "Email"),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: "Your password here",
                  labelText: "Password"),
                  obscureText: true,
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text("LOGIN"),
            )
          ],
        ),
      ),
    );
  }
}
