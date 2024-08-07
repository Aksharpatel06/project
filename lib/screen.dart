import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller.dart';
import 'package:project/firebase_sarvice.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: homeController.txtEmail,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
                controller: homeController.txtPwd,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  homeController.signUp(
                      homeController.txtEmail.text, homeController.txtPwd.text);
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
