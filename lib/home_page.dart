import 'package:flavor_demo/app_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.shared.appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("App Name: ${AppConfig.shared.appName}"),
            Text("Base URL: ${AppConfig.shared.baseUrl}"),
            Text("Flavor: ${AppConfig.shared.flavor}"),
          ],
        ),
      ),
    );
  }
}
