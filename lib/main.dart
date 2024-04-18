import 'package:flutter/material.dart';
import 'package:flutter_barber_04/information_account.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      home: Directionality(textDirection: TextDirection.rtl, child: Scaffold(
        backgroundColor: Color(0xff25262A),
        body: SafeArea(child: InformationAccount()),
      ),)
    );
  }
}