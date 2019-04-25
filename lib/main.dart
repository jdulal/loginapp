import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Login App Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
          );
        }
      }
      
class LoginPage extends StatefulWidget {
 LoginPage();
  @override
  _LoginPageState createState()=>_LoginPageState();
  }
  
  class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailField=TextField(
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(26.0))
      ),
    );

    final passwordField=TextField(
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(26.0))
      ),
    );

    final loginButton=Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.grey,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){},
        child: Text('Login',
        textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 100.0,
                  child: Image.asset("assets/flutter_logo.png",
                  fit: BoxFit.contain,
                  ),
                  ),
                  SizedBox(height: 35.0),
                  emailField,
                  SizedBox(height: 22.0),
                  passwordField,
                  SizedBox(height: 22.0),
                  loginButton,
                  SizedBox(height: 22.0,
                  
                  ),
                ],
              ),
                          ),
          ),
        ),
      ),
    );
  }
}



