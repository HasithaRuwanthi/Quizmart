import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp/view/signin.dart';
import 'package:quizapp/widget/widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  late String name, email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0, systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Form(
        key: formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? "Enter correct Name" : null;
                },
                decoration: InputDecoration(hintText: 'name'),
                onChanged: (val) {
                  name = val;
                },
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? "Enter correct Email" : null;
                },
                decoration: InputDecoration(hintText: 'email'),
                onChanged: (val) {
                  email = val;
                },
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty? "Enter correct Password" : null;
                },
                decoration: InputDecoration(hintText: 'password'),
                onChanged: (val) {
                  password = val;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(38)),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 15.5),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 15.5,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
