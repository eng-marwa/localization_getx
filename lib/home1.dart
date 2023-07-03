import 'package:f19/lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Language> languages = [
    Language("Arabic", "ar"),
    Language("English", "en")
  ];
  String selectedLanguage = "en";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        DropdownButton<String>(
            value: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value!;
                Get.updateLocale(Locale(value!));
              });
            },
            items: languages
                .map((e) =>
                    DropdownMenuItem(value: e.slug, child: Text(e.name!)))
                .toList()),
        const SizedBox(
          height: 16,
        ),
        Text('welcome'.tr, style: TextStyle(fontSize: 30)),
      ]),
    ));
  }
}
