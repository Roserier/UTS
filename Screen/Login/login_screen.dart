import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum2/Widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 115,
                width: 115,
                child: Image.asset("assets/uts-19sa1181.jpg"),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: TextFieldWidget(
                  icon: Icon(Icons.email),
                  pholder: 'Username',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextFieldWidget(
                  icon: Icon(Icons.vpn_key),
                  pholder: "Password",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  print("Halaman forgot password by danang");
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Forget password"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  print("Home");
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    color: Colors.grey[600],
                    height: 20,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green[700],
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account? "),
                    GestureDetector(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                    Text(" here."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
