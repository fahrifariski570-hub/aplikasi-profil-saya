import 'package:flutter/material.dart';
import 'Pages/main_page.dart';

void main() {
  runApp(const CompanyProfileApp());
}

class CompanyProfileApp extends StatelessWidget {
  const CompanyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CyberHack Company",
      theme:ThemeData(
        primarySwatch: Colors.blueGrey,
        
      ),
home: const MainPage(),
    );
  }
}