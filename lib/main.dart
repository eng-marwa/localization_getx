import 'package:f19/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: Locale("en"),
      fallbackLocale: Locale("en"),
      translations: MyTranslation(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
