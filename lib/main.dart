import 'dart:convert';

import 'package:app2/folders/home_page.dart';
import 'package:app2/folders/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      themeMode: ThemeMode.light,

      theme: ThemeData(primarySwatch: Colors.deepOrange,

      appBarTheme: AppBarTheme(color: Colors.orange,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6)),

      home:LoginPage(),
      debugShowCheckedModeBanner: false,


      routes: {

        "/login":(context)=>LoginPage(),
        "/home":(context)=>HomePage(),
      },
    );
  }
}



