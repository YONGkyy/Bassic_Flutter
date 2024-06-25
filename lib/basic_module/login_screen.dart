import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTitle(),
          _buildEmailTextField(),
          _buildPasswordTextField(),
          _buildLoginButton(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text("Login Screen");
  }

  Widget _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        hintText: "Enter Email",
      ),
    );
  }

  bool _hidePassword = true;

  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: _hidePassword,
      decoration: InputDecoration(
          icon: Icon(Icons.key),
          hintText: "Enter password",
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
            icon: Icon(_hidePassword ? Icons.visibility_off : Icons.visibility),
          )),
      textInputAction: TextInputAction.send,
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Login"),
    );
  }
}
