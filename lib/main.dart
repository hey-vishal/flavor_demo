import 'package:flavor_demo/app_config.dart';
import 'package:flavor_demo/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  AppConfig.create(
    appName: "Prod Flavor Example",
    baseUrl: "https://assembly.rajasthan.gov.in",
    primaryColor: Colors.yellow,
    flavor: Flavor.prod,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,primary: AppConfig.shared.primaryColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
