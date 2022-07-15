import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/widget/widget.dart';
import 'package:quizapp/view/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        key: formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children:[

            TextFormField(
              validator: (val) {
                return val!.isEmpty ? "Enter correct Email" :null ;
              },
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (val) {
                email = val;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (val) {
                return val!.isEmpty ? "Enter correct Password" : null;
              },
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (val) {
                email = val;
              },
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(38)),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 48,
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15.5),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 15.5,
                          decoration: TextDecoration.underline),
                    )),
              ],
            ),
            SizedBox(
              height: 80,

          ),
          ],),
        ),
      ),
    );
  }
}
