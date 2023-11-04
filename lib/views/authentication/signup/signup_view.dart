// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudarribe_trainee/components/inputfield.dart';
import 'package:mudarribe_trainee/components/password_inputField.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:mudarribe_trainee/utils/controller_initlization.dart';
import 'package:mudarribe_trainee/views/authentication/signup/signup_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 30),
                  child: Text(
                    "Create Your account",
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 40),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 15, 15, 15),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    InputField(
                      lable: 'Username',
                    ),
                    InputField(
                      lable: 'Email',
                    ),
                    PasswordInputField(
                      obscure: signUpController.obscureTextPassword,
                      toggle: signUpController.toggle,
                      lable: 'Password',
                    ),
                    PasswordInputField(
                      obscure: signUpController.obscureTextCPassword,
                      toggle: signUpController.toggle1,
                      lable: 'Confirm Password',
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Divider(color: borderTop))),
                    Text(
                      "Or ",
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: white),
                    ),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Divider(color: borderDown))),
                  ]),
                  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
