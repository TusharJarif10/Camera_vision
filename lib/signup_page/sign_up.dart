import 'package:camera_vision/login_page/login_page.dart';
import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget {
  final String title;

  const SignupPage({Key? key, required this.title}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool termsAndCondition = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.email_outlined),
                hintText: 'Email',
                labelText: 'Enter your Email',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.account_circle),
                hintText: 'Username',
                labelText: 'Enter your Username',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.add_call),
                hintText: 'Phone',
                labelText: 'Enter your Number',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.vpn_key_rounded),
                hintText: 'Password',
                labelText: 'Enter Password',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.vpn_key_rounded),
                hintText: 'Password',
                labelText: 'Re-enter Password',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.watch_later_outlined),
                hintText: 'Date of Birth',
                labelText: 'DD/MM/YY',
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                setState(() {
                  termsAndCondition = !termsAndCondition;
                });
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      activeColor: Colors.lightBlue,
                      value: termsAndCondition,
                      onChanged: (value) {
                        setState(() {
                          termsAndCondition = value!;
                        });
                      },
                    ),
                  ),
                  Text('I agree the Terms and Conditions'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    shape: StadiumBorder(),
                    minimumSize: Size.fromHeight(45),
                  ),
                    onPressed: termsAndCondition ? () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LoginPage(title: "Login")));
                    }:null,
                    child: Text('SignUp'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}