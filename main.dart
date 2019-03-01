import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class  LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}








class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black87,
      body: new Stack(
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/mentor.jpg"),

            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
                  ),

          new Column(
          new Form(
              child: new Theme(
                data: new ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.teal
                ),
                child: Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: "Enter Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: "Enter Password",
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ],
                ),
               ),
              )
            );
           ];
          ),
        );

  }
        }

