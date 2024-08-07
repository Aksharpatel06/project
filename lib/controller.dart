import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/firebase_sarvice.dart';

class HomeController extends GetxController{

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPwd = TextEditingController();

  Future<void> signUp(String email,String pwd)
  async {
    await FirebaseSarvice.authServices.createAccountUsingEmail(email, pwd);
  }
}