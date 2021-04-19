import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Column(
                  children: [
                    emailTextField(),
                    passwordTextField(),
                    SizedBox(
                      height: 20,
                    ),
                    loginButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter User Name',
        labelText: 'Username',
      ),
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        labelText: 'Password',
      ),
    );
  }

  Widget loginButton() {
    return ElevatedButton(
      onPressed: () {
        print("hi koishik"); 
      },
      child: Text('Login'),
      style: TextButton.styleFrom(),
    );
  }
}
