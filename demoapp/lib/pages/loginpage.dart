import 'dart:ui';
import 'package:demoapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Column(
                children: [
                  emailTextField(),
                  passwordTextField(),
                  SizedBox(
                    height: 40,
                  ),
                  loginButton(context),
                ],
              ),
            ),
          ],
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

  Widget loginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, MyRoutes.homeRoute);
      },
      child: Text('Login'),
      style: TextButton.styleFrom(
        minimumSize: Size(150, 40),
      ),
    );
  }
}
