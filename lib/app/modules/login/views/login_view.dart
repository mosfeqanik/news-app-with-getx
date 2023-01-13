import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: HeadingDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              heading(),
              const SizedBox(height: 20),
              lowerBoxPart()
            ],
          ),
        ),
      ),
    );
  }

  Expanded lowerBoxPart() {
    return Expanded(
      child: Container(
        decoration: inputBoxDecoration(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.h,
                ),
                inputContainer(),
                SizedBox(
                  height: 30.h,
                ),
                const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    controller.loginFunc();
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.cyan),
                    child: loginButton(),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                socialMediaInputPart()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column socialMediaInputPart() {
    return Column(
      children: [
        const Text(
          "Continue with social media",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: const Center(
                child: Text(
                  "Facebook",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                child: const Center(
                  child: Text(
                    "Github",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Center loginButton() {
    return const Center(
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container inputContainer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.lightBlueAccent,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                  hintText: "Email or Phone number",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration inputBoxDecoration() {
    return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60), topRight: Radius.circular(60)));
  }

  Padding heading() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome Back",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }

  BoxDecoration HeadingDecoration() {
    return BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, colors: [
      Colors.lightBlueAccent,
      Colors.blue,
      Colors.lightBlue,
    ]));
  }
}
