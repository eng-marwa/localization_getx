import 'package:f19/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        ElevatedButton(
            onPressed: () {
              Get.to(Details(), arguments: "Marwa");
            },
            child: Text('Go')),
        ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                title: 'Attention',
                content: const Text('Atr you sure you want to log out?'),
                confirmTextColor: Colors.white,
                cancelTextColor: Colors.blue,
                onCancel: () => Navigator.pop(context),
                onConfirm: () => print('Bye'),
              );
            },
            child: Text('Dialog')),
        ElevatedButton(
            onPressed: () {
              Get.showSnackbar(GetSnackBar(
                title: 'Attention',
                messageText: Text(
                  "Poor Internet Connection",
                ),
                duration: Duration(seconds: 3),
              ));
            },
            child: Text('Show Snack'))
      ]),
    ));
  }
}
