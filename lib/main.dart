import 'package:flutter/material.dart';
import 'package:viajei_app/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //this widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Viajei',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primarySwatch: Colors.deepOrange,
       ),
       home: LoginPage(),
    );
   }
 }