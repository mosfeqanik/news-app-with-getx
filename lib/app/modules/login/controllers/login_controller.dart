import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/memory_management.dart';
import '../../../utils/shared_pref_keys.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  var isSignUpButtonClick = false.obs;
  String? loggedInEmail;
  loginFunc() async {
    if (emailController.text.isEmpty && emailController.text.isEmpty) {
      Get.snackbar(
          backgroundColor: Colors.red,
          "oops",
          "input data is missing",
          colorText: Colors.white);
    } else {
      try {
        final user = await auth.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
        if (user != null) {
          if (emailController.text.isNotEmpty &&
              emailController.text.isNotEmpty) {
            SharedPreferencesRepository.SetString(
                SharedPrefKeys.token, "value");
            loggedInEmail = FirebaseAuth.instance.currentUser?.email;
            SharedPreferencesRepository.SetString(
                SharedPrefKeys.userEmail, loggedInEmail!);
            Get.snackbar(
                backgroundColor: Colors.green,
                "Hello",
                "Welcome",
                colorText: Colors.white);
            Get.offNamed(Routes.HOME);
          } else {
            Get.snackbar(
                backgroundColor: Colors.red,
                "OOPs",
                "something is wrong",
                colorText: Colors.white);
          }
        }
      } catch (e) {
        print("anik--> $e");
      }
    }
  }

  registerFunc() async {
    if (emailController.text.isEmpty && emailController.text.isEmpty) {
      Get.snackbar(
          backgroundColor: Colors.red,
          "oops",
          "input data is missing",
          colorText: Colors.white);
    } else {
      try {
        final user = await auth.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
        if (user != null) {
          if (emailController.text.isNotEmpty &&
              emailController.text.isNotEmpty) {
            SharedPreferencesRepository.SetString(
                SharedPrefKeys.token, "value");
            loggedInEmail = FirebaseAuth.instance.currentUser?.email;
            SharedPreferencesRepository.SetString(
                SharedPrefKeys.userEmail, loggedInEmail!);
            Get.snackbar(
                backgroundColor: Colors.green,
                "Hello",
                "Welcome",
                colorText: Colors.white);
            Get.offNamed(Routes.HOME);
          } else {
            Get.snackbar(
                backgroundColor: Colors.red,
                "OOPs",
                "something is wrong",
                colorText: Colors.white);
          }
        }
      } catch (e) {
        print("anik--> $e");
      }
    }
  }
}
