import 'package:camera_vision/home_page/home_page.dart';
import 'package:camera_vision/signup_page/sign_up.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key? key, required this.title}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Form(
          child: Padding(
            padding: EdgeInsets.all(10),
            //padding: EdgeInsets.all(10),
            //margin: EdgeInsets.all(10),
            //alignment: Alignment.center,
            child: ListView(children: [
              TextFormField(
                // ignore: non_constant_identifier_names
                validator: (StringProperty) {
                  var value;
                  if (value.isEmpty){
                    return "please enter";
                  }
                },
                decoration: const InputDecoration(
                  icon: const Icon(Icons.account_circle),
                  hintText: 'UserName',
                  labelText: 'Enter UserName',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.vpn_key_rounded),
                  hintText: 'Password',
                  labelText: 'Enter password',
                ),
              ),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Don't have an account?"),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SignupPage(title: "Sign up")));
                  },
                  child: Text('Sign Up'),
                )
              ]),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                        shape: StadiumBorder(),
                        minimumSize: Size.fromHeight(45),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(title: "Home")));
                      },
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        shape: StadiumBorder(),
                        minimumSize: Size.fromHeight(45),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SignupPage(title: "Sign up")));
                      },
                      child: Text('Sign up'),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
