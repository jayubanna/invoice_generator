import 'package:flutter/material.dart';
import 'package:invoice_generator/splash_page.dart';

import 'detail_page.dart';
import 'home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "home_page":(context) => Home(),
        "detail_page":(context) => Detail(),
      },
    );
  }
}

List<Map> pdflist=[];

